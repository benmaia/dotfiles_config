# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PAT
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$HOME/.local/bin:$PATH"

export LS_COLORS="di=34;1;141:ex=33;4;141"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="custom"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search bazel)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh

alias .="clear"
alias discord="xdg-open https://discord.com/channels/@me"
alias slack="/snap/bin/slack"
alias youtube="xdg-open https://www.youtube.com/"
alias intra="xdg-open https://profile.intra.42.fr/"
alias twitch="xdg-open https://www.twitch.tv/zerkaa"

alias cb="cmake -Bbuild"
alias cm="cmake --build build"

function openWeb() {
   xdg-open "https://www."$1""
}
alias web="openWeb"
alias dstart="sudo service docker start"
export no_proxy="*"

clear


###  RPP-BEGIN  ###
# Do not change content between BEGIN and END!
# This section is managed by a script.
if [[ -d "/usr/libexec/rpp_zshrc.d" ]]; then
    for rc_script in "/usr/libexec/rpp_zshrc.d/"*; do
      source "${rc_script}"
    done
fi
###  RPP-END  ###

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export no_proxy="*"

clear

export PATH="/usr/bin/lldb-vscode-10:$PATH"

source ~/.zsh_alias 
source ~/.zsh_functions
