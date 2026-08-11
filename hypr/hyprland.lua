
------------------
---- MONITORS ----
------------------
require("hyprland.monitors")


------------------
--- WORKSPACES ---
------------------
-- require("hyprland.workspaces") comment this section because we use hyprsplit


-------------------
---- AUTOSTART ----
-------------------
require("hyprland.autostart")
--
-- hl.on("hyprland.start", function () 
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
require("hyprland.env")

-----------------------
----- PERMISSIONS -----
-----------------------
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------
---- LOOK AND FEEL ----
-----------------------
require("hyprland.general")


---------------------
---- KEYBINDINGS ----
---------------------
require("hyprland.keybindings")


--------------------------------
--------- WINDOW RULES ---------
--------------------------------
require("hyprland.rules")

--------------------------------
---------- PLUGINS -------------
--------------------------------
require("hyprland.plugins")

