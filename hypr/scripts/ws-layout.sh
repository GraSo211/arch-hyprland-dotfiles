#!/usr/bin/env bash

WS="$1"

case "$WS" in
  2)
    hyprctl keyword master:mfact 0.90
    ;;
  3)
    hyprctl keyword master:mfact 0.7
    ;;
  *)
    hyprctl keyword master:mfact 0.55
    ;;
esac

