#!/bin/zsh
#
# .env - Archivo de configuración de variables de entorno, como PATH, LANG, etc.
#

# ---------- Entorno general ----------
export LANG=es_ES.UTF-8
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR='nano'
export GIT_EDITOR='nano'


# ---------- FZF Config ----------
export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND='fd --hidden --follow'

# ---------- Mapa de teclas favorito ----------
bindkey -e
