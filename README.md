# Haelnorr's NeoVim config

This is a list of all the plugins I use and what they do, along with some
documentation on keybinds and other usage.

## Contents

 - [Plugins](#plugins)
 - [Language server](#language-server)
 - [Keymappings](#keymappings)

## Plugins

Plugins are managed using [lazy.nvim](https://github.com/folke/lazy.nvim)  
 - [Aerial](#aerial)
 - [Comment](#comment)
 - [Conform](#conform)
 - [Feline](#feline)
 - [Fugitive](#fugitive)
 - [Gitsigns](#gitsigns)
 - [Harpoon](#harpoon)
 - [Markdown Preview](#markdown-preview)
 - [NVIM Web Devicons](#nvim-web-devicons)
 - [Oil](#oil)
 - [SUDA](#suda)
 - [Surround](#surround)
 - [Telescope](#telescope)
 - [TMUXNav](#tmuxnav)
 - [TODO Comments](#todo-comments)
 - [Treesitter](#treesitter)
 - [Trouble](#trouble)
 - [Undotree](#undotree)
 - [Vim be good](#vim-be-good)
 - [Vim Dadbod UI](#vim-dadbod-ui)

---
#### [Aerial](https://github.com/stevearc/aerial.nvim)
A code outline window for skimming and quick navigation
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>pa` | Toggle Aerial outline for current window | Normal |
| `{` | Cycle previous item | Inside Aerial |
| `}` | Cycle next item | Inside Aerial |

---
#### [Comment](https://github.com/numToStr/Comment.nvim)
Smart and powerful commenting plugin for NeoVim
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `gcc` | Toggles comment on current line using linewise comment | Normal |
| `gbc` | Toggles comment on current line using blockwise comment | Normal |
| `[count]gcc` | Toggles the number of line given as a prefix-count using linewise | Normal |
| `[count]gbc` | Toggles the number of line given as a prefix-count using blockwise | Normal |
| `gc[count]{motion}` | (Op-pending) Toggles the region using linewise comment | Normal |
| `gb[count]{motion}` | (Op-pending) Toggles the region using blockwise comment | Normal |
| `gc` | Toggles region using linewise comment | Visual |
| `gb` | Toggles region using blockwise comment | Visual |
| `gco` | Insert comment to next line and enter insert mode | Normal |
| `gcO` | Insert comment to previous line and enter insert mode | Normal |
| `gcA` | Insert comment to end of the current line and enter insert mode | Normal |

---
#### [Conform](https://github.com/stevearc/conform.nvim)
Lightweight yet powerful formatter plugin
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>f` | Formats entire file | Normal |
| `<leader>f` | Formats selection | Visual + Select |

---
#### [Feline](https://github.com/freddiehaddad/feline.nvim)
Customizable status line

---
#### [Fugitive](https://github.com/tpope/vim-fugitive)
Git integration  
| Keybind | Functionality | Mode |
|---------|---------------|------|
|`<leader>gs` | Opens fugitive window | Normal |
| `gu` | `<cmd>diffget //2<CR>` | Normal |
| `gh` | `<cmd>diffget //3<CR>` | Normal |
| `a` | Stage highlighted file |  (inside fugitive) |
| `<leader>s` | `:Git add -A` | (inside fugitive) |
| `<leader>c` | `:Git commit` | (inside fugitive) |
| `<leader>p` | `:Git push` | (inside fugitive) |
| `<leader>P` | `:Git pull --rebase` | (inside fugitive) |
| `<leader>t` | `:Git push -u origin <opts>` | (inside fugitive) |

---
#### [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
Customizable git diff decorators

---
#### [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
Quick swap between files
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>a` | Add current file | Normal |
| `Alt + e` | Toggle quick menu | Normal |
| `Alt + h` | Swap to file 1 | Normal |
| `Alt + j` | Swap to file 2 | Normal |
| `Alt + k` | Swap to file 3 | Normal |
| `Alt + l` | Swap to file 4 | Normal |
| `<leader> Alt + h` | Replace file 1 with current file | Normal |
| `<leader> Alt + j` | Replace file 2 with current file | Normal |
| `<leader> Alt + k` | Replace file 3 with current file | Normal |
| `<leader> Alt + l` | Replace file 4 with current file | Normal |

---
#### [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)
Live preview of markdown files in browser, with synced scrolling

**Usage:**  
`:MarkdownPreview` - Opens preview window in new tab of browser

---
#### [NVIM Web Devicons](https://github.com/nvim-tree/nvim-web-devicons)
Provides Nerd font icons for other plugins to use

---
#### [Oil](https://github.com/nvim-tree/nvim-web-devicons)
Edit/view your filesystem like a normal NeoVim buffer

---
#### [SUDA](https://github.com/lambdalisue/vim-suda)
Write files using sudo inside NeoVim

**Usage:**  
`:SudaRead` - Reread current file using sudo  
`:SudaWrite` - Write current file using sudo

---
#### [Surround](https://github.com/kylechui/nvim-surround)
Add delete or remove surrounding pairs with Vim shortcuts

**Usage:**  
The three "core" operations of add/delete/change can be done with the keymaps 
ys{motion}{char}, ds{char}, and cs{target}{replacement}, respectively. 
For the following examples, * will denote the cursor position:
```help
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
```
---
#### [Telescope](https://github.com/nvim-telescope/telescope.nvim)
Extensible fuzzy finder for NeoVim
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>pf` | Find files | Normal |
| `Ctrl + p` | Find git files | Normal |
| `<leader>pws` | Search files for `<cword>` (word the cursor is on) | Normal |
| `<leader>pWs` | Search files for `<cWORD>` (WORD the cursor is on) | Normal |
| `<leader>ps` | Search files with grep | Normal |
| `<leader>vh` | Search builtin documentation | Normal |

---
#### [TMUXNav](https://github.com/christoomey/vim-tmux-navigator)
Integrated commands for navigating between tmux panes
| Keybind | Functionality | Mode |
|---------|---------------|------|
| `Ctrl + h` | Navigate left | Normal |
| `Ctrl + j` | Navigate down | Normal |
| `Ctrl + k` | Navigate up | Normal |
| `Ctrl + l` | Navigate right | Normal |
| `Ctrl + \` | Navigate previous | Normal |

---
#### [TODO Comments](https://github.com/folke/todo-comments.nvim)
Decorate code with comment highlighting

**Usage:**  
`KEYWORD: comment`  
e.g. in Python:  
(**NOTE:** the highlighting wont appear in the code snippet below) 
```python
## List of available keywords
# TODO: this needs implementing
# HACK: hmmm, this looks a bit funky
# WARN: probably want to fix this soon
# PERF: perfectly optimised
# NOTE: this is a clever use of an example :)
# TEST: just making sure
```
![Tue Jan 21 08:37:48 PM AEDT 2025](https://github.com/user-attachments/assets/8d776498-e9f2-44ad-a908-94f8f1546009)


`:TodoTelescope` - search project todos with Telescope  

---
#### [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Syntax highlighting, the best way

---
#### [Trouble](https://github.com/folke/trouble.nvim)
Error diagnostics

| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>tt` | Toggle diagnostics tab | Normal |
| `<leader>tq` | Toggle quickfix list | Normal |

---
#### [Undotree](https://github.com/mbbill/undotree)
Undotree for NeoVim

| Keybind | Functionality | Mode |
|---------|---------------|------|
| `<leader>u` | Open undotree | Normal |

---
#### [Vim be good](https://github.com/ThePrimeagen/vim-be-good)
Games for praciticing Vim motions  
**Usage:**  
`:VimBeGood`

---
#### [Vim Dadbod UI](https://github.com/kristijanhusak/vim-dadbod-ui)
Simple UI for Vim-dadbod. Allows for navigation through databases and saving
queries.

**Usage:**  
`:DBUI`


---
## Language Server

#### [NVIM-LSPConfig](https://github.com/neovim/nvim-lspconfig)

LSP has been setup with the following dependencies:
 - williamboman/mason.nvim
 - williamboman/mason-lspconfig.nvim
 - hrsh7th/cmp-nvim-lsp
 - hrsh7th/cmp-buffer
 - hrsh7th/cmp-path
 - hrsh7th/cmp-cmdline
 - hrsh7th/nvim-cmp
 - L3MON4D3/LuaSnip
 - saadparwaiz1/cmp_luasnip
 - j-hui/fidget.nvim

 Language servers configured in `ensure_installed`:
 - lua_ls
 - bashls
 - css_variables
 - cssls
 - cssmodules_ls
 - docker_compose_language_service
 - dockerls
 - html
 - jsonls
 - pyright

| Keybind | Functionality | Mode |
|---------|---------------|------|
| `Ctrl + p` | auto-complete select prev item | Normal |
| `Ctrl + n` | auto-complete select next item | Normal |
| `Ctrl + y` | auto-complete confirm selected item | Normal |
| `Ctrl + space` | invoke auto-complete | Normal |
| `gd` | jumps to the definition of the symbol under the cursor | Normal |
| `K` | displays hover information about the symbol under the cursor | Normal |
| `<leader>vws` | lists all symbols in the current workspace matching {query} | Normal |
| `<leader>vd`  | show diagnostics in a floating window | Normal |
| `<leader>vca` | selects a code action available at the current cursor (?) | Normal |
| `<leader>vrr` | lists all references to the symbol under the cursor | Normal |
| `<leader>vrn` | rename all references to the symbol under the cursor | Normal |
| `Ctrl + h` | displays signature information about the symbol under the cursor | Insert |
| `[d` | next diagnostic | Normal |
| `]d` | prev diagnostic | Normal |

## Keymappings
#### Leader key: `<Space>`

| Keybind | Behaviour | Normal | Visual | Select |
|---------|-----------|--------|--------|--------|
| `-` | View parent directory (works in file and in Oil filetree viewer) | &check; | &cross; | &cross; |
| `J` | Move selection down and autoindent | &cross; | &check; | &check; |
| `K` | Move selection up and autoindent | &cross; | &check; | &check; |
| `J` | Moves line below current line into sameline | &check; | &cross; | &cross; |
| `Ctrl + d` | Jump down page, keeping cursor centered (<C-d>zz) | &check; | &cross; | &cross; |
| `Ctrl + u` | Jump up page, keeping cursor centered (<C-u>zz) | &check; | &cross; | &cross; |
| `n` | (in search) Next item, keeping cursor centered | &check; | &cross; | &cross; |
| `N` | (in search) Prev item, keeping cursor centered | &check; | &cross; | &cross; |
| `<leader>p` | Replaces selection with buffer without overriding buffer | &cross; | &check; | &cross; |
| `<leader>y` | Yanks selection to system clipboard | &check; | &check; | &check; |
| `<leader>Y` | Yanks line to system clipboard | &check; | &cross; | &cross; |
| `<leader>d` | Deletes without replacing buffer, can be used with dd to delete line | &check; | &check; | &check; |
| `Ctrl + k` | Quickfix next | &check; | &cross; | &cross; |
| `Ctrl + j` | Quickfix prev | &check; | &cross; | &cross; |
| `<leader>k` | QF Location next | &check; | &cross; | &cross; |
| `<leader>j` | QF Location prev | &check; | &cross; | &cross; |
| `<leader>s` | search in file for symbol under cursor, and refactor | &check; | &cross; | &cross; |
| `<leader>x` | make file executable | &check; | &cross; | &cross; |
| `<leader>o` | Add new line below current line | &check; | &cross; | &cross; |
| `Ctrl + Q` | Toggle page right divider (colorcolumn) | &check; | &cross; | &cross; |

