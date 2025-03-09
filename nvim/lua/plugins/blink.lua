return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = {
      "rafamadriz/friendly-snippets",
      {
        "fang2hou/blink-copilot",
        opts = {
          max_completions = 1, -- Global default for max completions
          max_attempts = 2, -- Global default for max attempts
          -- `kind` is not set, so the default value is "Copilot"
        },
      },
    },

    -- use a release tag to download pre-built binaries
    version = "*",
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    build = "cargo build --release",
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "default" },
      signature = { enabled = true },
      -- signature.window.show_documentation = false,

      appearance = {
        kind_icons = {
          Copilot = "",
        },
      },

      sources = {
        default = { "lsp", "copilot", "path", "snippets", "buffer" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-copilot",
            score_offset = 100,
            async = true,
            opts = {},
          },
        },
      },

      completion = {
        ghost_text = { enabled = true },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },
    },
    opts_extend = { "sources.default" },
  },
}
