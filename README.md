# colorschemes.nvim
Shell command to preview the top 50 neovim colorschemes.

[Youtube demo](https://www.youtube.com/watch?v=9iTfufJ67-o)

![screenshot_2024-09-27_19-19-48_324245139](https://github.com/user-attachments/assets/5f20a92d-eba6-491b-af76-7e1255f3b88a)

## Why
* So many colorthemes, so little time.
* A single command to preview the top 50 [accorting to dotyfile](https://dotfyle.com/neovim/colorscheme/top/).

## How to use (minfile)
Copy paste this in your terminal
```sh
wget https://raw.githubusercontent.com/Zeioth/colorschemes.nvim/main/colorschemes-minfile.lua -O preview-colorschemes.lua && nvim -u preview-colorschemes.lua
```
You can navigate the colorschemes with the arrow keys.

## How to use (with your personal config)
* Copy `colorschemes.lua` into your lazy plugins directory.
* Inside Neovim run the command `:lua require("telescope.builtin").colorscheme`.
* You can navigate the colorschemes with the arrow keys.


## Credits
All colorschemes included here belong to their original creators. Please star their plugins if you like them. I've created this just for fun.
