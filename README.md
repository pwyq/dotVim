## Customized vimrc

> Author: Yanqing Wu  
> OS: Ubuntu 16.04

### How to use?

Note:

` ~/usr/share/vim/vimrc` is the system default vimrc.
`~/etc/vim/vimrc` is the symlink of the above vimrc, which is just the same file.

If you do not wish to use one vimrc globally, you should create a new vimrc file.
Before proceeding, please make sure you have installed `vim`.

1. Create `.vim` folder in your HOME repository

    `cd $HOME`
    `mkdir .vim`

2. Create a `.vimrc` file

    `vim .vim/.vimrc`

3. Verify your own `.vimrc` can be loaded correctly.

    Add `echo "MY VIMRC LOADED" command to the newly created `.vimrc` 
    Then, run vim again, you should see the message "MY VIMRC LOADED" in the terminal.

4. Add your customized settings in .vimrc

### If you wish to create a git repo of .vimrc

1. Create a symlink to `~/.vimrc`

    `ln -s ~/.vim/.vimrc ~/.vimrc`

    This command will create a copy file of the original vimrc.
    Then in `.vim`, you can make it a git repository like general.
