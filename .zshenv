export PATH="$PATH:$HOME/tools/bin:$HOME/.local/share/coursier/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export FLYCTL_INSTALL="/home/kimmo/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
. "$HOME/.cargo/env"
