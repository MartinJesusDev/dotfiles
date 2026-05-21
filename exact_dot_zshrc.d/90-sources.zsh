#!/bin/zsh
#
# .sources - Archivo de configuración de fuentes de Zsh
#

# ---------- Fix conda OpenSSL and source conda ----------
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
[[ -f /opt/anaconda/etc/profile.d/conda.sh ]] && source /opt/anaconda/etc/profile.d/conda.sh

# ---------- Iniciar SDKMAN ----------
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
