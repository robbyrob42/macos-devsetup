# load dotfiles and such

for file in ~/.{bash_prompt,aliases}; do
        [ -r "$file" ] && source "$file"
done
unset file

# start starship prompt

# get the status code from the last command
STATUS=$?

# get the number of jobs running in background
NUM_JOBS=$(jobs -p | wc -l)

# unset PS1 before calling starship
unset PS1

# start starship
eval "$(starship init bash)"

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

eval "$(pyenv init -)"

#1PW CLI completion

eval "$(op completion bash)"

# tldr update

# eval "$(tldr -u)"
source /Users/robertjacques/.config/op/plugins.sh

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# For bash subshells, add to ~/.bashrc or ~/.bash_profile.
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash"}}\x9c'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv init

eval "$(rbenv init -)"

# stripe bash completions
source ~/.stripe/stripe-completion.bash
. "/Users/robertjacques/.deno/env"
source /Users/robertjacques/.local/share/bash-completion/completions/deno.bash