ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
  fi
}

source ~/.env
source ~/.alias
source ~/.secure_env

zstyle ':completion:*' use-cache on
unsetopt PROMPT_SP

bindkey "\e\eOD" backward-word 
bindkey "\e\eOC" forward-word

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/danielebartorilla/.sdkman"
[[ -s "/Users/danielebartorilla/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/danielebartorilla/.sdkman/bin/sdkman-init.sh"

source /Users/danielebartorilla/.walla_env
