local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local sessionizer = wezterm.plugin.require "https://github.com/mikkasendke/sessionizer.wezterm"
local my_schema = {
    { label = "Nvim Config", id = "C:/Users/Muzammil/AppData/Local/nvim" },
    sessionizer.DefaultWorkspace {},
    -- sessionizer.AllActiveWorkspaces {},
    -- sessionizer.FdSearch "~/projects",
}
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.default_prog = { 'C:/Program Files/Git/bin/bash.exe', '-l' }
config.font = wezterm.font 'AdwaitaMono Nerd Font'
config.color_scheme = 'Gruvbox Dark (Gogh)'

config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
    {
        mods = "LEADER",
        key = "c",
        action = wezterm.action.SpawnTab "CurrentPaneDomain",
    },
    {
        mods = "LEADER",
        key = "x",
        action = wezterm.action.CloseCurrentPane { confirm = true }
    },
    {
        mods = "LEADER",
        key = "p",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        mods = "LEADER",
        key = "n",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        mods = "LEADER|SHIFT",
        key = "%",
        action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
    },
    {
        mods = "LEADER|SHIFT",
        key = "\"",
        action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
    },
    {
        mods = "LEADER",
        key = "h",
        action = wezterm.action.ActivatePaneDirection "Left"
    },
    {
        mods = "LEADER",
        key = "j",
        action = wezterm.action.ActivatePaneDirection "Down"
    },
    {
        mods = "LEADER",
        key = "k",
        action = wezterm.action.ActivatePaneDirection "Up"
    },
    {
        mods = "LEADER",
        key = "l",
        action = wezterm.action.ActivatePaneDirection "Right"
    },
    {
        mods = "LEADER",
        key = "LeftArrow",
        action = wezterm.action.AdjustPaneSize { "Left", 5 }
    },
    {
        mods = "LEADER",
        key = "RightArrow",
        action = wezterm.action.AdjustPaneSize { "Right", 5 }
    },
    {
        mods = "LEADER",
        key = "DownArrow",
        action = wezterm.action.AdjustPaneSize { "Down", 5 }
    },
    {
        mods = "LEADER",
        key = "UpArrow",
        action = wezterm.action.AdjustPaneSize { "Up", 5 }
    },
    { key = "z", mods = "LEADER", action = wezterm.action.TogglePaneZoomState },
    { key = "s", mods = "LEADER",    action = sessionizer.show(my_schema) },
}


return config
