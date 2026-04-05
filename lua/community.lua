-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Fast, modern completion engine
  { import = "astrocommunity.completion.blink-cmp" },
  -- GitHub Copilot AI suggestions as cmp source
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Pretty list for diagnostics, references, quickfix, and LSP results
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Lightweight, extensible code formatter (replaces null-ls formatting)
  { import = "astrocommunity.editing-support.conform-nvim" },
  -- Enhanced increment/decrement for numbers, dates, booleans, etc.
  { import = "astrocommunity.editing-support.dial-nvim" },
  -- Explains regex patterns in plain English as a floating window
  { import = "astrocommunity.editing-support.hypersonic-nvim" },
  -- Browse and search DevDocs.io documentation inside Neovim
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  -- Auto-inserts `end` keywords for Ruby, Lua, Vimscript, etc.
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  -- Colorizes matching delimiters (brackets, parens) at each nesting level
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  -- Convert text between cases: camelCase, snake_case, PascalCase, etc.
  { import = "astrocommunity.editing-support.text-case-nvim" },
  -- Generates documentation comments (JSDoc, LDoc, etc.) from code
  { import = "astrocommunity.editing-support.vim-doge" },

  -- AI-powered side-by-side code diff review
  { import = "astrocommunity.git.codediff-nvim" },
  -- Rich git diff viewer and file history browser
  { import = "astrocommunity.git.diffview-nvim" },
  -- Inline git blame annotations at end of each line
  { import = "astrocommunity.git.git-blame-nvim" },
  -- Visual git branch graph (log --graph) inside Neovim
  { import = "astrocommunity.git.gitgraph-nvim" },
  -- Edit GitHub issues, PRs, and reviews without leaving Neovim
  { import = "astrocommunity.git.octo-nvim" },
  -- Open current file or selection in GitHub/GitLab in the browser
  { import = "astrocommunity.git.openingh-nvim" },
  -- Magit-inspired full-featured git interface
  { import = "astrocommunity.git.neogit" },

  -- { import = "astrocommunity.indent.indent-blankline-nvim" },
  -- { import = "astrocommunity.indent.indent-rainbowline" },

  -- Displays inlay type hints at end of lines (requires LSP support)
  { import = "astrocommunity.lsp.nvim-lsp-endhints" },
  -- Shows reference count and implementation count above definitions
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  -- Displays function signature help popup while typing arguments
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  -- Enhanced LSP UI: hover docs, code actions, breadcrumbs, rename
  { import = "astrocommunity.lsp.lspsaga-nvim" },

  -- Add, change, and delete surrounding pairs (quotes, brackets, tags)
  { import = "astrocommunity.motion.nvim-surround" },

  -- Live markdown preview rendered in the browser
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  -- Renders markdown (headings, code blocks, tables) directly in the buffer
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- Screenshot code snippets as beautiful images
  { import = "astrocommunity.media.codesnap-nvim" },

  -- Astro framework: LSP, treesitter, and tooling
  { import = "astrocommunity.pack.astro" },
  -- Bash: LSP (bashls), treesitter, and linting
  { import = "astrocommunity.pack.bash" },
  -- Docker: Dockerfile LSP, treesitter, and compose support
  { import = "astrocommunity.pack.docker" },
  -- Go: LSP (gopls), DAP, treesitter, and formatting
  { import = "astrocommunity.pack.go" },
  -- Database client: vim-dadbod with UI and completion
  { import = "astrocommunity.pack.full-dadbod" },
  -- Helm: chart template LSP and treesitter support
  { import = "astrocommunity.pack.helm" },
  -- JSON: LSP (jsonls) with schema validation and treesitter
  { import = "astrocommunity.pack.json" },
  -- Kotlin: LSP (kotlin-language-server) and treesitter
  { import = "astrocommunity.pack.kotlin" },
  -- Lua: LSP (lua_ls), formatting (stylua), and treesitter
  { import = "astrocommunity.pack.lua" },
  -- Markdown: LSP, treesitter, and formatting tools
  { import = "astrocommunity.pack.markdown" },
  -- OCaml: LSP (ocamllsp), treesitter, and formatting
  { import = "astrocommunity.pack.ocaml" },
  -- Protocol Buffers: LSP and treesitter support
  { import = "astrocommunity.pack.proto" },
  -- { import = "astrocommunity.pack.ruby" },
  -- import/override with your plugins folder
  -- Rust: LSP (rust-analyzer), DAP, treesitter, and Cargo integration
  { import = "astrocommunity.pack.rust" },
  -- SQL: LSP (sqls), treesitter, and formatting
  { import = "astrocommunity.pack.sql" },
  -- Tailwind CSS: LSP with color hints and class sorting
  { import = "astrocommunity.pack.tailwindcss" },
  -- Terraform/HCL: LSP (terraformls), treesitter, and formatting
  { import = "astrocommunity.pack.terraform" },
  -- TypeScript/JavaScript: LSP (tsserver/vtsls), treesitter, and tooling
  { import = "astrocommunity.pack.typescript" },
  -- YAML: LSP (yaml-language-server) with schema validation
  { import = "astrocommunity.pack.yaml" },

  -- Auto-saves and restores the last session on startup
  { import = "astrocommunity.recipes.auto-session-restore" },
  -- Disable the tabline (tabs are rarely used in Neovim, so this frees up space)
  { import = "astrocommunity.recipes.disable-tabline" },

  -- Seamless navigation between Neovim splits and tmux panes
  { import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
  -- { import = "astrocommunity.terminal-integration.vim-tmux-yank" },

  -- Displays code coverage signs and percentages from lcov/gcov reports
  { import = "astrocommunity.test.nvim-coverage" },

  -- FZY native sorter for faster fuzzy matching in Telescope
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
}
