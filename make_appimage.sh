#!/bin/bash

# download binary file.
if [ ! -f Free42Linux.tgz ]; then
    wget https://thomasokken.com/free42/download/Free42Linux.tgz
fi

# download source file.
if [ ! -f free42.tgz ]; then
    wget https://thomasokken.com/free42/download/free42.tgz
fi

tar xvf Free42Linux.tgz
tar xvf free42.tgz

app_dir=Free42.AppDir

mkdir -p ${app_dir}
mkdir -p ${app_dir}/usr
mkdir -p ${app_dir}/usr/bin

cp AppRun ${app_dir}
cp free42.desktop ${app_dir}
cp free42/gtk/icon-128x128.xpm ${app_dir}
cp Free42Linux/free42bin ${app_dir}/usr/bin

# download linuxdeploy-x86_64.AppImage file. for create AppImage file.
if [ ! -f linuxdeploy-x86_64.AppImage ]; then
    wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
    chmod +x linuxdeploy-x86_64.AppImage
fi

# create AppImage file.
./linuxdeploy-x86_64.AppImage --appdir ${app_dir} --output appimage
