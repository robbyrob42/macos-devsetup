# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/opt/homebrew/opt/postgresql@15/bin:$HOME/.local/bin:$HOME/.rbenv/shims:$PATH
# PYENV Setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# custom settings for plugins
zstyle ':omz:plugins:alias-finder' autoload yes


# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
dotenv
rake
rbenv
ruby
1password
aliases
alias-finder
bundler
bun
command-not-found
colorize
cp
deno
docker
emoji
eza
fzf
gcloud
gh
gitignore
git-auto-fetch
heroku
httpie
macos
mise
ngrok
nmap
node
npm
nvm
pm2
pip
pyenv
pylint
python
rails
redis-cli
rsync
rust
sfdx
ssh
starship
stripe
systemadmin
systemd
tailscale
thefuck
tmux
uv
yarn
zoxide
zsh-navigation-tools
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# VV Copied from .bashrc VV
#
# load dotfiles and such
#
#for file in ~/.{bash_prompt,aliases}; do
#        [ -r "$file" ] && source "$file"
#done
#unset file

# start starship prompt

# get the status code from the last command
# STATUS=$?

# get the number of jobs running in background
NUM_JOBS=$(jobs -p | wc -l)

# unset PS1 before calling starship
# unset PS1

# start starship
#eval "$(starship init bash)"

# restore PS1
# PS1=""

# # set homebrew shellenv

# eval "$(/opt/homebrew/bin/brew shellenv)"

# # set Heroku Autocomplete

# HEROKU_AC_BASH_SETUP_PATH=/Users/robertjacques/Library/Caches/heroku/autocomplete/bash_setup 

# if [ -n "$HEROKU_AC_BASH_SETUP_PATH" ]; then
#        source "$HEROKU_AC_BASH_SETUP_PATH"
# fi


# # ngrok autocomplete setup

# if command -v ngrok &>/dev/null; then
#         eval "$(ngrok completion)"
# fi

# pyenv init

# eval "$(pyenv init -)"

#1PW CLI completion

# eval "$(op completion bash)"

# tldr update

# eval "$(tldr -u)"
# source /Users/robertjacques/.config/op/plugins.sh

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# For bash subshells, add to ~/.bashrc or ~/.bash_profile.
# printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash"}}\x9c'

# export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv init

#eval "$(rbenv init -)"

# stripe bash completions
# source ~/.stripe/stripe-completion.bash
#. "/Users/robertjacques/.deno/env"
# source /Users/robertjacques/.local/share/bash-completion/completions/deno.bash
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
