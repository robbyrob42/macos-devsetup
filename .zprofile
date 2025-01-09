for file in ~/.{path,exports,functions,extra}; do
        [ -r "$file" ] && source "$file"
done
unset file

eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
# rbenv and pyenv inits
eval "$(pyenv init -)"

eval "$(rbenv init -)"
