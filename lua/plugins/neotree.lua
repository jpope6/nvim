return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 30,
      },
      -- Uses the file_open event to close the Neo-tree window when a file is opened.
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- Auto close
            -- vim.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })

    vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>')
  end,
}

