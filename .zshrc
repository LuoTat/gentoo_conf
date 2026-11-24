# zinit begin
ZINIT_HOME="${HOME}/.zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
# zinit end

# 语法高亮
zinit ice wait lucid atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay"
zinit light zdharma-continuum/fast-syntax-highlighting
# 自动补全
zinit ice wait lucid blockf
zinit light zsh-users/zsh-completions
# 自动建议
zinit ice wait lucid atload"!_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Pure 主题
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# zsh-newuser-install begin
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# zsh-newuser-install end

# LuoTat
alias ls="eza -al --icons"
alias sync-all="sudo emaint -a sync"
alias update-all="sudo emerge -uDN @world"
alias clean-all="sudo emerge -c"
alias rebuild-all="sudo emerge -e @world"
#export ALL_PROXY="http://127.0.0.1:7890"
source <(fzf --zsh)
# Added by `rbenv init` on 2026年 06月 28日 星期日 23:37:49 CST
source <(~/.rbenv/bin/rbenv init - --no-rehash zsh)
