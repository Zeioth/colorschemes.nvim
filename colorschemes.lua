-- Colorschemes
-- Plugins that add new colorschemes.

return {
  -- SIMILAR TO TOKYONIGHT
  -- --------------------------------------------------------------------------

  -- tokyodark [theme]
  {
    "tiagovla/tokyodark.nvim",
    event = "User LoadColorSchemes",
  },

  -- catppuccin [theme]
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "User LoadColorSchemes",
  },

  -- kanagawa [theme]
  {
    "rebelot/kanagawa.nvim",
    event = "User LoadColorSchemes",
  },

  -- onedark [theme]
  {
    "navarasu/onedark.nvim",
    event = "User LoadColorSchemes",
    opts = {
      -- dark, darker, cool, deep, warm, warmer
      style = 'deep'
    }
  },

  -- overferst [theme]
  {
    "sainnhe/everforest",
    event = "User LoadColorSchemes",
  },

  -- rose-pine [theme]
  {
    "rose-pine/neovim",
    event = "User LoadColorSchemes",
  },

  -- material [theme]
  {
    "marko-cerovac/material.nvim",
    event = "User LoadColorSchemes",
  },

  -- SIMILAR TO GRUVBOX
  -- --------------------------------------------------------------------------

  -- gruvbox-baby [theme]
  -- https://github.com/luisiacc/gruvbox-baby
  {
    "luisiacc/gruvbox-baby",
    event = "User LoadColorSchemes",
  },

  -- SIMILAR TO MONOKAI
  -- --------------------------------------------------------------------------
  -- monokai-pro [theme] → Fails with autoload in nvim 0.11
  -- {
  --   "loctvl842/monokai-pro.nvim",
  --   event = "User LoadColorSchemes",
  -- },

  -- monokai [theme]
  {
    "tanvirtin/monokai.nvim",
    event = "User LoadColorSchemes",
  },

  -- monokai-nightasty [theme]
  {
    "polirritmico/monokai-nightasty.nvim",
    event = "User LoadColorSchemes",
  },

  -- one_monokai [theme]
  {
    "cpea2506/one_monokai.nvim",
    event = "User LoadColorSchemes",
  },

  -- sonokai [theme]
  {
    "sainnhe/sonokai",
    event = "User LoadColorSchemes",
  },

  -- CYBERPUNK
  -- --------------------------------------------------------------------------

  -- fluoromachine [theme]
  {
    "maxmx03/fluoromachine.nvim",
    event = "User LoadColorSchemes",
    opts = {
      theme = "retrowave", -- delta, fluormachine, retrowave
    }
  },

  -- synthwave [theme]
  {
    "samharju/synthweave.nvim",
    event = "User LoadColorSchemes",
  },

  -- ORIGINAL
  -- --------------------------------------------------------------------------

  -- melange [theme]
  {
    "savq/melange-nvim",
    event = "User LoadColorSchemes",
  },

  -- dracula [theme]
  {
    "Mofiqul/dracula.nvim",
    event = "User LoadColorSchemes",
  },

  -- eldritch [theme]
  {
    "eldritch-theme/eldritch.nvim",
    event = "User LoadColorSchemes",
  },

  -- night-own [theme]
  {
    "oxfist/night-owl.nvim",
    event = "User LoadColorSchemes",
  },

  -- moonlight [theme]
  {
    "shaunsingh/moonlight.nvim",
    event = "User LoadColorSchemes",
  },

  -- zephyr [theme]
  {
    "glepnir/zephyr-nvim",
    event = "User LoadColorSchemes",
  },

  -- dark-flat [theme]
  {
    "sekke276/dark_flat.nvim",
    event = "User LoadColorSchemes",
  },

  -- everforest [theme]
  {
    "sainnhe/everforest",
    event = "User LoadColorSchemes",
  },

  -- LUSH THEMES
  -- --------------------------------------------------------------------------
   -- arctic [theme]
  {
    "rockyzhang24/arctic.nvim",
    event = "User LoadColorSchemes",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
  },
}
