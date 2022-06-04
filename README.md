# macos-devsetup

Add Touch ID to SUDO

First, open up Terminal. Navigate to the directory where the system stores the list of PAMs by typing cd /etc/pam.d/ and open the sudo file there in your favorite command-line text editor. (You can also always use a GUI editor like BBEdit too.) Note that if you open it via the command-line, you’ll need to use sudo itself to do so, since the file is (understandably) protected.

Once you’ve opened it, add the following below the first line (you’ll see the headers under which each of the entries goes):

auth sufficient pam_tid.so

That line basically tells the sudo command that the Touch ID authentication module is sufficient to authorize the user, which is all you need to do.



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

