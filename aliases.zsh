# recommended aliases

# we hate cat, we like bat but we can't stop fingers from loving kitty
alias cat=bat

# Always use color output for `ls`

# Personal Aliases
alias myip="curl ipinfo.io?token=344c2a766c0854"
alias rm="rm -i"
alias home="cd"
alias whereami="pwd"

# Get the Weather
alias weather="curl wttr.in"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcre2grep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python3.11 -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="pmset displaysleepnow"

# Custom Git
alias gfasd="find . -type d -name .git -execdir sh -c 'git fetch --all' {} \;" #git fetch all sub directories (run git fetch on everything one level below)

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# reset the bluetooth module
alias killblue="sudo pkill bluetoothd"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
