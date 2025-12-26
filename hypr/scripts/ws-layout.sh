#!/usr/bin/env bash

WS="$1"

case "$WS" in
  2)
    # Workspace 2: layout master
    hyprctl keyword general:layout master
    hyprctl keyword master:mfact 0.80
    ;;
  *)
    # Resto de workspaces: layout dwindle
    hyprctl keyword general:layout dwindle
    ;;
esac

