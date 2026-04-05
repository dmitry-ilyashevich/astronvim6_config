return {
  {
    "dmtrKovalenko/fff.nvim",
    build = function()
      -- this will download prebuild binary or try to use existing rustup toolchain to build from source
      -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
      require("fff.download").download_or_build_binary()
    end,
    -- if you are using nixos
    -- build = "nix run .#release",
    opts = { -- (optional)
      debug = {
        enabled = false, -- we expect your collaboration at least during the beta
        show_scores = false, -- to help us optimize the scoring system, feel free to share your scores!
      },
    },
    -- No need to lazy-load with lazy.nvim.
    -- This plugin initializes itself lazily.
    lazy = false,
    -- Force override these keymaps after all plugins have loaded
    config = function(_, opts)
      require("fff").setup(opts)

      local map = function(lhs, rhs, desc) vim.keymap.set("n", lhs, rhs, { desc = desc, noremap = true }) end

      map("<leader>ff", function() require("fff").find_files() end, "FFFind files")
      map("<leader>fw", function() require("fff").live_grep() end, "LiFFFe grep")
      map(
        "<leader>fz",
        function()
          require("fff").live_grep {
            grep = { modes = { "fuzzy", "plain" } },
          }
        end,
        "Live fffuzy grep"
      )
      map(
        "<leader>fc",
        function() require("fff").live_grep { query = vim.fn.expand "<cword>" } end,
        "Search current word"
      )
    end,
  },
}
