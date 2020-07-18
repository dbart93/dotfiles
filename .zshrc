export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
gradle-completion
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
