#!/bin/bash

# uses swaylock-effects-git package from aur
# won't work with regular swaylock
# current colors: nord-theme

swaylock \
	--screenshots \
  --font Roboto \
	--clock \
	--indicator \
	--indicator-radius 100 \
	--indicator-thickness 7 \
  --indicator-caps-lock \
	--effect-blur 8x4 \
	--ring-color 2e3440 \
	--key-hl-color d8dee9 \
	--line-color 00000000 \
	--inside-color 00000088 \
  --inside-ver-color 00000088 \
  --inside-wrong-color 00000088 \
  --inside-clear-color 00000088 \
  --ring-ver-color a3be8c \
  --line-uses-ring \
  --text-color d8dee9 \
  --ring-wrong-color bf616a \
  --ring-caps-lock-color d08770 \
  --ring-clear-color ebcb8b \
  --text-caps-lock-color d8dee9\
  --text-wrong-color d8dee9 \
  --text-ver-color d8dee9 \
  --text-clear-color d8dee9 \
	--separator-color 00000000 \
  --bs-hl-color b48ead \
  --caps-lock-key-hl-color d8dee9 \
  --caps-lock-bs-hl-color b48ead \
