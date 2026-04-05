-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local function set_background_based_on_os()
  -- Default value
  local background = "light"
  local colorscheme = "iceberg-light"
  -- First check whether we are on MacOS
  if vim.loop.os_uname().sysname == "Darwin" then
    -- Check if 'defaults' is executable
    if vim.fn.executable "defaults" ~= 0 then
      -- Execute command to check if the macOS appearance is set to Dark
      local appleInterfaceStyle = vim.fn.system { "defaults", "read", "-g", "AppleInterfaceStyle" }
      if appleInterfaceStyle:find "Dark" then
        background = "dark"
        colorscheme = "iceberg"
      end
    end
  -- Check if 'busctl' is executable (part of systemd)
  elseif vim.fn.executable "busctl" ~= 0 then
    -- Get the current color scheme from xdg-desktop-portal using busctl
    local result = vim.fn.system {
      "busctl",
      "--user",
      "call",
      "org.freedesktop.portal.Desktop",
      "/org/freedesktop/portal/desktop",
      "org.freedesktop.portal.Settings",
      "ReadOne",
      "ss",
      "org.freedesktop.appearance",
      "color-scheme",
    }
    -- The result is in the form of "v u 0" for light and "v u 1" for dark
    local color_scheme = result:match "u%s+(%d+)"

    if color_scheme == "1" then
      background = "dark"
      colorscheme = "iceberg"
    end
  end

  -- Set the background
  vim.opt.background = background
  vim.cmd("colorscheme " .. colorscheme)
end
set_background_based_on_os()

vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })
