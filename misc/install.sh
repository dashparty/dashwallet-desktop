#!/bin/sh
# DashWallet - Linux installer script
# Handles installing DashWallet and integrating with window manager
###########################################################
basedir=/usr/share
echo "### Creating installation directories..."
mkdir -vp $basedir/DashWallet
mkdir -vp $basedir/icons/DashWallet
mkdir -vp $basedir/applications
echo "### Installing DashWallet..."
cp -a * $basedir/DashWallet/
cp DashWallet.png $basedir/icons/DashWallet/
echo "### Integrating DashWallet with linux desktop..."
cp DashWallet.desktop $basedir/applications
echo "### Setting file permissions..."
chmod 644 $basedir/icons/DashWallet/DashWallet.png 
chmod 644 $basedir/applications/DashWallet.desktop
chmod 755 $basedir/DashWallet/*
echo "### Updating desktop database..."
/usr/bin/update-desktop-database
echo "### Installation Complete!"