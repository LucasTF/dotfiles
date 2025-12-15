#!/bin/bash
sleep 2
killall xdg-desktop-portal-hyprland xdg-desktop-portal-kde xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal-kde &
/usr/lib/xdg-desktop-portal &