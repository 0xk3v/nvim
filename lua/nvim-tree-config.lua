-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end

local lib = require("nvim-tree.lib")
local view = require("nvim-tree.view")

-- local function collapse_all()
--   require("nvim-tree.actions.tree-modifiers.collapse-all").fn()
-- end

local function edit_or_open()
  -- open as vsplit on current node
  local action = "edit"
  local node = lib.get_node_at_cursor()

  -- Just copy what's done normally with vsplit
  if node.link_to and not node.nodes then
    require("nvim-tree.actions.node.open-file").fn(action, node.link_to)
    view.close() -- Close the tree if file was opened
  elseif node.nodes ~= nil then
    lib.expand_or_collapse(node)
  else
    require("nvim-tree.actions.node.open-file").fn(action, node.absolute_path)
    view.close() -- Close the tree if file was opened
  end
end

local function vsplit_preview()
  -- open as vsplit on current node
  local action = "vsplit"
  local node = lib.get_node_at_cursor()

  -- Just copy what's done normally with vsplit
  if node.link_to and not node.nodes then
    require("nvim-tree.actions.node.open-file").fn(action, node.link_to)
  elseif node.nodes ~= nil then
    lib.expand_or_collapse(node)
  else
    require("nvim-tree.actions.node.open-file").fn(action, node.absolute_path)
  end

  -- Finally refocus on tree if it was lost
  view.focus()
end

-- local tree_cb = nvim_tree_config.nvim_tree_callback

local config = {
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        { key = "l", action = "edit", action_cb = edit_or_open },
        { key = "v", action = "vsplit_preview", action_cb = vsplit_preview },
        { key = "h", action = "close_node" },
        -- { key = "H", action = "collapse_all", action_cb = collapse_all },
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          arrow_open = "",
          arrow_closed = "",
        },
      },
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = true,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
}

vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
require("nvim-tree").setup(config)

-- local tree = {}
-- tree.open = function()
--   require("bufferline.state").set_offset(31, "FileTree")
--   require("nvim-tree").find_file(true)
-- end

-- tree.close = function()
--   require("bufferline.state").set_offset(0)
--   require("nvim-tree").close()
-- end

-- return tree
