## Customized vimrc

> Author: Yanqing Wu  
> Tested OS: Ubuntu 16.04 & Arch Linux

### How to use (Arch Linux)?
1. download this repo. I downloaded to `~/github/`
2. directly create a soft link, following code will create a softlink of `.vimrc` file in this repo to `home` directory

    ```
    cd
    ln -s ~/github/dotVim/vim_setup/.vimrc .
    ```

3. download `Vundle` plugin manager (link is available at the bottom), then change the path to `Vundle.vim` in `.vimrc` file

### How to use (Ubuntu)?

Note:

` ~/usr/share/vim/vimrc` is the system default vimrc.  
`~/etc/vim/vimrc` is the symlink of the above vimrc, which is just the same file.  
`.netrwhist` is a history file which maintains all modifications of vim plugin/script

If you do not wish to use one vimrc globally, you should create a new vimrc file.
Before proceeding, please make sure you have installed `vim`.

1. Create `.vim` folder in your HOME repository

    `cd $HOME`  
    `mkdir .vim`

2. Create a `.vimrc` file

    `vim .vim/.vimrc`

3. Verify your own `.vimrc` can be loaded correctly.

    Add `echo "MY VIMRC LOADED"` command to the newly created `.vimrc` 
    Then, run vim again, you should see the message "MY VIMRC LOADED" in the terminal.

4. Add your customized settings in .vimrc

### If you wish to create a git repo of .vimrc

1. Create a symlink to `~/.vimrc`

    `ln -s ~/.vim/.vimrc ~/.vimrc`

    This command will create a copy file of the original vimrc.
    Then in `.vim`, you can make it a git repository like general.

### Use A Plugin Manager

[pathogen](https://github.com/tpope/vim-pathogen)
    
> A runtime path manipulation tool  
> pros:  
> - Easy to install plugins (All you need is to put the plugin in `bundle` folder)  
> - Only one line needed to add to `.vimrc`  
> cons:  
> - Need to update plugins manually

[Vundle](https://github.com/VundleVim/Vundle.vim)

> A plugin manager (Inspired by pathogen)  
> pros:  
> update configured plugins automatically  
> keep track of configure plugins in `.vimrc`  

[vim-plug](https://github.com/junegunn/vim-plug)

> A plugin manager (I haven't use it, but this one seems older than other two)
