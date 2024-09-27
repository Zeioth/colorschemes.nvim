-- Use this command to quickly test cool neovim colorschemes!
-- nvim -u ./preview-colorschemes.lua

-- prepare minimal_init
-- ============================================================================

-- DO NOT change the paths and don't remove the colorscheme
local root = vim.fn.fnamemodify("./.repro", ":p")

-- set stdpaths to use .repro
for _, name in ipairs({ "config", "data", "state", "cache" }) do
  vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
end

-- bootstrap lazy
local lazypath = root .. "/plugins/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- install plugins
-- ============================================================================
local plugins = {
  -- TOKYONIGHT LIKE
  -- --------------------------------------------------------------------------

  -- tokyonight [theme]
  -- https://github.com/folke/tokyonight.nvim
  {
    "folke/tokyonight.nvim",
    event = "User LoadColorSchemes",
    opts = {
      cache = true, -- disable this if your UI is rendered incorrectly.
      dim_inactive = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
  },

  -- astrotheme [theme]
  -- https://github.com/AstroNvim/astrotheme
  {
    "AstroNvim/astrotheme",
    event = "User LoadColorSchemes",
    opts = {
      palette = "astrodark",
      plugins = { ["dashboard-nvim"] = true },
    },
  },

  -- tokyodark [theme]
  -- https://github.com/tiagovla/tokyodark.nvim
  {
    "tiagovla/tokyodark.nvim",
    event = "User LoadColorSchemes",
  },

  -- catppuccin [theme]
  -- https://github.com/catppuccin/nvim
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "User LoadColorSchemes",
  },

  -- kanagawa [theme]
  -- https://github.com/rebelot/kanagawa.nvim
  {
    "rebelot/kanagawa.nvim",
    event = "User LoadColorSchemes",
  },

  -- onedark [theme]
  -- https://github.com/navarasu/onedark.nvim
  {
    "navarasu/onedark.nvim",
    event = "User LoadColorSchemes",
    opts = {
      -- dark, darker, cool, deep, warm, warmer
      style = "deep",
    },
  },

  -- overferst [theme]
  -- https://github.com/sainnhe/everforest
  {
    "sainnhe/everforest",
    event = "User LoadColorSchemes",
  },

  -- rose-pine [theme]
  -- https://github.com/rose-pine/neovim
  {
    "rose-pine/neovim",
    event = "User LoadColorSchemes",
  },

  -- material [theme]
  -- https://github.com/marko-cerovac/material.nvim
  {
    "marko-cerovac/material.nvim",
    event = "User LoadColorSchemes",
  },

  -- GRUVBOX LIKE
  -- --------------------------------------------------------------------------

  -- gruvbox-baby [theme]
  -- https://github.com/luisiacc/gruvbox-baby
  {
    "luisiacc/gruvbox-baby",
    event = "User LoadColorSchemes",
  },

  -- MONOKAI LIKE
  -- --------------------------------------------------------------------------
  -- monokai-pro [theme] → Fails with telescope preview in nvim 0.11
  --  --  https://github.com/loctvl842/monokai-pro.nvim
  -- {
  --   "loctvl842/monokai-pro.nvim",
  --   event = "User LoadColorSchemes",
  -- },

  -- monokai [theme]
  -- https://github.com/tanvirtin/monokai.nvim
  {
    "tanvirtin/monokai.nvim",
    event = "User LoadColorSchemes",
  },

  -- monokai-nightasty [theme]
  -- polirritmico/monokai-nightasty.nvim
  {
    "polirritmico/monokai-nightasty.nvim",
    event = "User LoadColorSchemes",
  },

  -- one_monokai [theme]
  -- https://github.com/cpea2506/one_monokai.nvim
  {
    "cpea2506/one_monokai.nvim",
    event = "User LoadColorSchemes",
  },

  -- sonokai [theme]
  -- https://github.com/sainnhe/sonokai
  {
    "sainnhe/sonokai",
    event = "User LoadColorSchemes",
  },

  -- CYBERPUNK LIKE
  -- --------------------------------------------------------------------------

  -- eldritch [theme]
  -- https://github.com/eldritch-theme/eldritch.nvim
  {
    "eldritch-theme/eldritch.nvim",
    event = "User LoadColorSchemes",
  },

  -- fluoromachine [theme]
  -- https://github.com/AstroNvim/astrotheme
  {
    "maxmx03/fluoromachine.nvim",
    event = "User LoadColorSchemes",
    opts = {
      theme = "retrowave", -- delta, fluormachine, retrowave
    },
  },

  -- synthwave [theme]
  -- https://github.com/samharju/synthweave.nvim
  {
    "samharju/synthweave.nvim",
    event = "User LoadColorSchemes",
  },

  -- ORIGINAL WORKS
  -- --------------------------------------------------------------------------

  -- melange [theme]
  -- https://github.com/savq/melange-nvim
  {
    "savq/melange-nvim",
    event = "User LoadColorSchemes",
  },

  -- dracula [theme]
  -- https://github.com/Mofiqul/dracula.nvim
  {
    "Mofiqul/dracula.nvim",
    event = "User LoadColorSchemes",
  },

  -- night-own [theme]
  -- https://github.com/oxfist/night-owl.nvim
  {
    "oxfist/night-owl.nvim",
    event = "User LoadColorSchemes",
  },

  -- moonlight [theme]
  -- https://github.com/shaunsingh/moonlight.nvim
  {
    "shaunsingh/moonlight.nvim",
    event = "User LoadColorSchemes",
  },

  -- zephyr [theme]
  -- https://github.com/nvimdev/zephyr-nvim
  {
    "nvimdev/zephyr-nvim",
    event = "User LoadColorSchemes",
  },

  -- dark-flat [theme]
  -- https://github.com/sekke276/dark_flat.nvim
  {
    "sekke276/dark_flat.nvim",
    event = "User LoadColorSchemes",
  },

  -- everforest [theme]
  -- https://github.com/sainnhe/everforest
  {
    "sainnhe/everforest",
    event = "User LoadColorSchemes",
  },

  -- THEMES BASED ON LUSH
  -- --------------------------------------------------------------------------
  -- arctic [theme]
  -- https://github.com/rockyzhang24/arctic.nvim
  {
    "rockyzhang24/arctic.nvim",
    event = "User LoadColorSchemes",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
  },

  -- TREESITTER
  -- --------------------------------------------------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VimEnter",
    build = ":TSUpdate",
    init = function(plugin)
      -- perf: make treesitter queries available at startup.
      require("lazy.core.loader").add_to_rtp(plugin)
      require("nvim-treesitter.query_predicates")
    end,
    opts = {
      auto_install = true,
      highlight = {
        enable = true,
      },
      incremental_selection = { enable = true },
      indent = { enable = true },
    },
  },

  -- TELESCOPE FOR COLORSCHEME PREVIEW
  -- --------------------------------------------------------------------------
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        defaults = {
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.0,
            },
            vertical = {
              mirror = false,
            },
            width = 0.2,
            height = 0.8,
          },
        },
      }
  },
}
require("lazy").setup(plugins, {
  root = root .. "/plugins",
})

-- run aditional code
-- ============================================================================

-- On Startup, open the previewer.
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(
      require("telescope.builtin").colorscheme,
      { enable_preview = true, ignore_builtins = true }
    )
  end,
})

-- Press 'Space' to open the previewer.
vim.api.nvim_set_keymap(
  "n",
  "<Space>",
  [[:lua pcall(require("telescope.builtin").colorscheme, { enable_preview = true, ignore_builtins = true })<CR>]],
  { noremap = true, silent = true }
)

-- insert example code!
-- ============================================================================
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- insert Python prime number generator code into the buffer
    local lines = {
      "# Prime number generator in Python",
      "def is_prime(n):",
      "    if n <= 1:",
      "        return False",
      "    for i in range(2, int(n ** 0.5) + 1):",
      "        if n % i == 0:",
      "            return False",
      "    return True",
      "",
      "def generate_primes(limit):",
      "    primes = []",
      "    for num in range(2, limit + 1):",
      "        if is_prime(num):",
      "            primes.append(num)",
      "    return primes",
      "",
      "if __name__ == '__main__':",
      "    print('Prime numbers up to 100:')",
      "    print(generate_primes(100))",
    }

    -- set the lines in the current buffer (0 refers to the current buffer)
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

    -- set the filetype to Python
    vim.bo.filetype = "python"
  end,
})
