-- Colorschemes
-- Plugins that add new colorschemes.

return {
  -- TOKYONIGHT
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
    }
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
      style = 'deep'
    }
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

  -- GRUVBOX
  -- --------------------------------------------------------------------------

  -- gruvbox-baby [theme]
  -- https://github.com/luisiacc/gruvbox-baby
  {
    "luisiacc/gruvbox-baby",
    event = "User LoadColorSchemes",
  },

  -- MONOKAI
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

  -- CYBERPUNK
  -- --------------------------------------------------------------------------

  -- fluoromachine [theme]
  -- https://github.com/AstroNvim/astrotheme
  {
    "maxmx03/fluoromachine.nvim",
    event = "User LoadColorSchemes",
    opts = {
      theme = "retrowave", -- delta, fluormachine, retrowave
    }
  },

  -- synthwave [theme]
  -- https://github.com/samharju/synthweave.nvim
  {
    "samharju/synthweave.nvim",
    event = "User LoadColorSchemes",
  },

  -- ORIGINAL
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

  -- eldritch [theme]
  -- https://github.com/eldritch-theme/eldritch.nvim
  {
    "eldritch-theme/eldritch.nvim",
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

  -- LUSH THEMES
  -- --------------------------------------------------------------------------
  -- arctic [theme]
  -- https://github.com/rockyzhang24/arctic.nvim
  {
    "rockyzhang24/arctic.nvim",
    event = "User LoadColorSchemes",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
  },
}
