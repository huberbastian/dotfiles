local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- prettier
  --b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.prettier,
  -- Lua
  b.formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
