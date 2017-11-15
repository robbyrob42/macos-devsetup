# macos-devsetup
.bash profile, prompt, aliases, vimrc, vundle config for easy new machine setup

I have leveraged https://github.com/nicolashery/mac-dev-setup recommendations for setting up my Mac

and used https://github.com/mathiasbynens/dotfiles for some dotfiles

Huge fan of http://ethanschoonover.com/solarized colorscheme as well

https://github.com/neowit/tooling-force.com
and https://github.com/neowit/vim-force.com for SFDC development

tpope/vim-fugitive

to setup:

clone this to somewhere

1. make sure you "cp .vim* .bash* .aliases ~/" 

then:

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"

then, in vim:

:VundleUpdate

or from command line:

vim +PluginInsall +qall

#Make sure to point anything marked TODO in .vimrc to your actual locations!

