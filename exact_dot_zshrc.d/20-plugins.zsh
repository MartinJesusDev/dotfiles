#!/bin/zsh
#
# .plugins - Archivo configuración de plugins de Zsh, como antidote, powerlevel10k, etc.
#

# ---------- Enable Powerlevel10k instant prompt ----------
# Enable Powerlevel10k instant prompt. Should stay close to the top of .zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---------- Plugin zimfw SSH ----------
zstyle ':zim:ssh' ids 'id_github_martinjesusdev'

# ---------- Plugin zsh-autocomplete ----------
zstyle ':autocomplete:*' delay 0.15  # seconds (float)
zstyle ':autocomplete:*' timeout 1.2
zstyle ':autocomplete:*' insert-unambiguous yes

# ---------- Inicialización de zimfw ----------
zstyle ':zim:zmodule' use 'degit' # Use degit to fetch modules from GitHub, GitLab, etc.
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://raw.githubusercontent.com/zimfw/zimfw/refs/heads/master/zimfw.zsh
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi
source ${ZIM_HOME}/init.zsh

# ---------- Plugin fzf-tab ----------
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

# ---------- Cargar configuración del prompt ----------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
