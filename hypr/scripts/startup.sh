
#!/usr/bin/env bash
set -e

hyprctl wait monitors

########################
# Lanzar apps (sin workspace)
########################

kitty --title momoisay -e momoisay -f &
kitty --title fastfetch --hold -e fastfetch &
zen-browser &
code &
steam &
discord &
kitty --title clock-2 -e tty-clock -c -B -f "%A %d %B" &
kitty --title pipes -e pipes.sh -p 2 -t 1 &
kitty --title clock -e tty-clock -d -c -B &
kitty --title cava -e cava &
kitty --title btop -e btop &

########################
# Esperar ventanas
########################

hyprctl wait window title:momoisay
hyprctl wait window title:fastfetch
hyprctl wait window class:zen
hyprctl wait window class:Code
hyprctl wait window class:steam
hyprctl wait window class:discord
hyprctl wait window title:clock-2
hyprctl wait window title:pipes
hyprctl wait window title:clock
hyprctl wait window title:cava
hyprctl wait window title:btop

########################
# Mover a workspaces
########################

hyprctl dispatch movetoworkspace 1,title:momoisay
hyprctl dispatch movetoworkspace 1,title:fastfetch

hyprctl dispatch movetoworkspace 2,class:zen
hyprctl dispatch movetoworkspace 2,title:clock-2
hyprctl dispatch movetoworkspace 2,title:pipes

hyprctl dispatch movetoworkspace 3,class:Code
hyprctl dispatch movetoworkspace 4,class:steam

hyprctl dispatch movetoworkspace 8,class:discord
hyprctl dispatch movetoworkspace 8,title:clock
hyprctl dispatch movetoworkspace 8,title:cava

hyprctl dispatch movetoworkspace 9,title:btop

########################
# Workspace final
########################
hyprctl dispatch workspace 1

