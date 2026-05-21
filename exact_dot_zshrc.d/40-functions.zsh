#!/bin/zsh
#
# .functions - Archivo de configuración de funciones personalizadas de Zsh, como funciones para mejorar la productividad, alias avanzados, etc.
#

# ---------- Funciones personalizadas key-bindings ----------
# Función para borrar palabras como en bash, sin considerar / como parte de la palabra
bash-backward-kill-word() {
  local WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'   # sin /
  zle backward-kill-word
}
zle -N bash-backward-kill-word
