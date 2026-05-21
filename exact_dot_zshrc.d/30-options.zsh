#!/bin/zsh
#
# .options - Configuración de opciones de Zsh
#

# ---------- Directorios y Navegación ----------
setopt AUTO_CD                # Escribir solo el dir para hacer 'cd'
setopt AUTO_PUSHD             # Guardar dircetorio previo en la pila
setopt PUSHD_IGNORE_DUPS      # No guardar el mismo dir dos veces en la pila

# ---------- Completado ----------
setopt ALWAYS_TO_END          # Mover cursor al final al completar palabra
setopt COMPLETE_IN_WORD       # Completar desde donde esté el cursor

# ---------- Expansion de patrones y globbing ----------
setopt EXTENDED_GLOB          # Operadores de búsqueda #, ~, ^
setopt GLOB_DOTS              # * incluye los archivos ocultos (.*)
setopt NO_CASE_GLOB           # No distinguir mayúsculas en globbing
setopt NUMERIC_GLOB_SORT      # Ordenar 1, 2, 10 en vez de 1, 10, 2
setopt REMATCH_PCRE           # Permitir regex en patrones de globbing
setopt MAGIC_EQUAL_SUBST      # Permitir = para reemplazar parte de un comando con su resultado
setopt MARK_DIRS              # Marcar directorios con una barra al completar
setopt GLOB_STAR_SHORT       # Permite escribir *** como atajo para **/*
unsetopt NOMATCH              # Estilo bash: si no hay wildcard, pasarlo literal

# ---------- Historial ----------
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000              # Set the amount of lines you want saved
SAVEHIST=1000000              # This is required to actually save them, needs to match with HISTSIZE
setopt SHARE_HISTORY          # Compartir historial entre pestañas
setopt EXTENDED_HISTORY       # Guardar fecha y hora en el historial
setopt HIST_EXPIRE_DUPS_FIRST # Eliminar duplicados más antiguos al expirar el historial
setopt HIST_FIND_NO_DUPS      # No mostrar duplicados al buscar en el historial
setopt HIST_IGNORE_ALL_DUPS   # Borrar duplicados del historial
setopt HIST_IGNORE_SPACE      # Comandos con espacio inicial no se guardan
setopt HIST_NO_STORE          # No guardar en el historial (para comandos específicos)
setopt HIST_REDUCE_BLANKS     # Limpiar espacios en blanco sobrantes
setopt HIST_SAVE_NO_DUPS      # No guardar comandos duplicados
setopt HIST_VERIFY            # !comando no se ejecuta, se pone para editar

# ---------- Entrada, Salida y Scripts (Input/Output & Scripts) ----------
setopt INTERACTIVE_COMMENTS   # Permitir comentarios en modo interactivo
setopt CORRECT                # Corregir errores de tipeo en comandos
setopt PROMPT_SUBST           # Permitir comandos en el prompt

# ---------- Control de trabajos y procesos ----------
setopt AUTO_RESUME             # Reanudar trabajos detenidos al volver a la terminal
setopt LONG_LIST_JOBS         # Mostrar más información en 'jobs'

# ---------- ZLE (Zsh Line Editor) ----------
setopt NO_BEEP                # No hacer beep en errores de ZLE
setopt NO_HIST_BEEP           # No hacer beep al buscar en el historial
setopt NO_LIST_BEEP           # No hacer beep al listar opciones de autocompletado
