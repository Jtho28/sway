#!/bin/bash

sudo rm -r .config/sway/*
sudo rm -r .config/wofi/*
sudo rm -r .config/waybar/*
sudo cp -r ~/.config/sway/* .config/sway/
sudo cp -r ~/.config/wofi/* .config/wofi/
sudo cp -r ~/.config/waybar/* .config/waybar/
