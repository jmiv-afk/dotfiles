# dotfiles
This is a repository containing my various dotfiles. I also have a few good scripts in the bin folder. There is a good [youtube video](https://www.youtube.com/watch?v=CFzEuBGPPPg&t=1792s) explaining how to sync these dotfiles using GNU Stow. Stow is a symbolic link management utility. 

Adopt changes from existing dotfiles (use with care!) - moves existing files to dotfiles folder and creates a symlink to them. Note that the `-n` flag uses simulation mode and so it will output what it will do instead of modifying the filesystem:

`stow --adopt -nvSt ~ <folder or *>`

Also see `man stow` for more details. 
