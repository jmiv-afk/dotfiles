# dotfiles
This is a repository containing my various dotfiles. There is a good [youtube video](https://youtu.be/CFzEuBGPPPg) by DevInsideYou explaining how to sync these dotfiles using GNU Stow and git across multiple systems. Stow is a symbolic link management utility. 

I would recommend cloning the dotfiles repository in your $HOME (~) directory. Then, you can `cd ~/dotfiles`. From there, there are several basic commands available, outlined below. Note that the `-n` flag, present in all commands below implements simulation mode and so it will output what it will do instead of modifying the filesystem:

Stow the packages specified in `<dir>` into the target `~`. This will create symlinks for dotfiles from your target directory (~) to their repository versions (thus your system inherits the dotfiles in `<dir>`):

`stow -nvSt ~ <dir>`

Unstow the packages specified in `<dir>` into the target `~`. This deletes the symlinks for dotfiles from your target directory (~). The repository versions are still there, however the symlinks are gone, clearing your systems dotfiles which were pointing to the files in `<dir>`:

`stow -nvDt ~ <dir>`

Adopt changes from existing dotfiles (use with care!) - moves existing files to dotfiles repo and creates a symlink from their original counterparts to the repository versions. 

`stow --adopt -nvSt ~ <dir>`

See `man stow` for more details. 
