#!/bin/sh

BLANK='#000000cc'
CLEAR='#ffffff'
DEFAULT='#282828'
TEXT='#ebdbb2'
WRONG='#cc241d'
VERIFYING='#ebdbb2'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$TEXT          \
--bshl-color=$WRONG          \
\
--screen 1                   \
--keylayout 1                \
--time-str="%H:%M:%S"        \
--date-str="%d-%m-%Y"        \
--color=$BLANK               \
#--blur 5                     \
#--inside-color=$BLANK        \
#--clock                      \
#--indicator                  \
