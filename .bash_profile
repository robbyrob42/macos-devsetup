#existing bash profile items
export ANT_HOME=/usr/local/ant
export JAVA_HOME=/usr/local/jdk1.8.0_60
export PATH=${PATH}:${ANT_HOME}/bin
export CLICOLOR=1
export PS1="[\d \t \u@\h:\w ] $ "
source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#from https://github.com/nicolashery/mac-dev-setup
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:/usr/local/bin/python3:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

