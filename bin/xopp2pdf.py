#!/usr/bin/env python3 

import gzip
import xml.etree.ElementTree as ET
import subprocess
import argparse
import sys
import pathlib
import tempfile

progname="xopp2pdf"
def exitmsg(message, exitnb=1):
    print(f'{progname}: error: {message}', file=sys.stderr)
    exit(exitnb)

def get_background(file):
    with gzip.open(file) as xopp:
        root = ET.parse(xopp).getroot()
        pages = []
        pdfbg = []
        for child in root.iter('page'):
            bg = child.find('background')
            pages.append(bg.get('pageno'))
            bgfile = bg.get("filename")
            if bgfile: pdfbg.append(bgfile)
        if len(pdfbg) > 1:
            raise ValueError("several background files; not supported yet")
        return pathlib.Path(pdfbg[0]),pages
            
def export(inputfile, outputfile):
    try:
        pdffile, pages = get_background(inputfile)
    except ET.ParseError:
        print(f'{inputfile} appears to be ill-formed, has not been converted', file=sys.stderr)
        return
    
    tmpfile = pathlib.Path(tempfile.NamedTemporaryFile(suffix='.pdf').name)

    xpp_call = ['xournalpp', inputfile, '-p', tmpfile, '--export-no-background']
    qpdf_call = ['qpdf', pdffile, '--pages', '.', ','.join(pages), '--', '--overlay', tmpfile, '--', outputfile]
    rm_call = ['rm', tmpfile]

    for call in (xpp_call, qpdf_call, rm_call):
        if exitcode := subprocess.run(call, stderr=subprocess.DEVNULL).returncode:
            exitmsg(f'{call[0]} exited with exit code {exitcode}', exitcode)
    print(f'{progname}: {inputfile} successfully exported to {outputfile}', file=sys.stderr)

def get_args():
    parser = argparse.ArgumentParser(prog=progname, description="Exports a file from xournal++ to PDF")
    parser.add_argument('arglist', metavar='<input>.xopp', nargs='+', help='file produced by xournal++')
    parser.add_argument('output', metavar='<output>', nargs='?', help='output file or directory ; should be empty or a directory for several inputs')
    
    args = parser.parse_args()
    arglist = args.arglist

    def error(message, exitnb=1):
        parser.print_usage(file=sys.stderr)
        exitmsg(message, exitnb)

    filelist = [pathlib.Path(file) for file in arglist]
    n = len(filelist)
    if n == 1:
        inputfiles = filelist
        output = pathlib.Path('.')
    elif filelist[-1].suffix == '.xopp':
        inputfiles = filelist
        output = pathlib.Path('.')
    else:
        inputfiles = filelist[:-1]
        output = filelist[-1]


    # Check inputs
    for inputfile in inputfiles:
        if inputfile.suffix != ".xopp":
            error(f'{inputfile} is not a .xopp file')
        if not inputfile.is_file():
            error(f'{inputfile} is not a valid file')

    # Check output
    if len(inputfiles) > 1 and not output.is_dir():
        error(f'The last provided argument {output} is neither a .xopp file nor a directory')
    if output.suffix == ".pdf" and not output.is_file():
        error(f'{output} is not a valid file')
    if output.suffix and output.suffix != '.pdf':
        error(f'{output} is not a valid pdf file name')
    if not output.suffix and not output.is_dir():
        error(f'{output} is not a valid directory')

    # Only one input / output is a file
    if not output.is_dir():
        return [(inputfiles[0], output)]
    
    # Compute output file names
    pairs = []
    always = False
    for inputfile in inputfiles:
        if inputfile.parent.samefile(output):
            outputfile = pathlib.Path(f'{inputfile.stem}-xopp.pdf')
        else:
            outputfile = output.joinpath(f'{inputfile.stem}.pdf')
        if not always and outputfile.exists():
            ans = input(f'{outputfile} already exists. Do you want to overwrite it? [y/a/N] ')
            while ans.upper() not in ['', 'Y','A','N']:
                ans = input('{ans} is not a correct choice: type either y/Y (yes), a/A (all) or n/N (no) ')
            if ans.upper() in ['', 'N']:
                error('No conversion performed. Rerun with another output file/directory')
            elif ans.upper() == 'A':
                always = True
        pairs.append((inputfile, outputfile))
      
    return pairs
        
if __name__ == '__main__':
    pairs = get_args()
    for inputfile, outputfile in pairs:
        export(inputfile, outputfile)
