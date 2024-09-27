# colorschemes.nvim
My curated collection of Neovim colorschemes

## Why
* So many colorthemes, so little time.
* A single command to preview the top 50 ones.

## How to use (minfile)
Copy paste the next command in your terminal to download a minfile and preview the colorschemes without poluting your personal config.

```sh
wget https://raw.githubusercontent.com/Zeioth/colorschemes.nvim/main/colorschemes-minfile.lua -O preview-colorschemes.lua && nvim -u preview-colorschemes.lua
```
You can navigate the colorschemes with the arrow keys.

## How to use (on your personal config)
* Copy `colorschemes.lua` into your lazy plugins directory.
* Inside Neovim run the command `:lua require("telescope.builtin").colorscheme` and preview the plugins.
* Press enter to confim.
