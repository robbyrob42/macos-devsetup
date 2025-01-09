# if [ -f ~/.bashrc ]; then UPDATING profile vs bashrc to see if this fixes the issue of starship not initializing
#         source ~/.bashrc
# fi

# load dotfiles except .aliases, .prompt and such which happen in .bashrc

for file in ~/.{path,exports,functions,extra}; do
        [ -r "$file" ] && source "$file"
done
unset file

# # doing prompts in .bashrc instead of .bash_profile

# eval "$(starship init bash)"

# set homebrew shellenv

eval "$(/opt/homebrew/bin/brew shellenv)"

# set Heroku Autocomplete

HEROKU_AC_BASH_SETUP_PATH=/Users/robertjacques/Library/Caches/heroku/autocomplete/bash_setup 

if [ -n "$HEROKU_AC_BASH_SETUP_PATH" ]; then
       source "$HEROKU_AC_BASH_SETUP_PATH"
fi


# ngrok autocomplete setup

if command -v ngrok &>/dev/null; then
        eval "$(ngrok completion)"
fi

# pyenv init

eval "$(pyenv init -)"

#1PW CLI completion

eval "$(op completion bash)"

# tldr update
eval "$(tldr -u)"