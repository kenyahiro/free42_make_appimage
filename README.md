# free42 make appimage

Free42のAppImageを作成するスクリプトです。

このスクリプトは以下の動作を行います。

## 必要なファイルのダウンロード。

https://thomasokken.com/free42/ からlinux用のバイナリをダウンロードします。
また、 ソースコードもダウンロードします。

## ダウンロードしたファイルの展開

上でダウンロードしたtgzを展開します。

## AppImage用のディレクトリの作成

AppImage用のディレクトリを作成して、 必要なファイルをコピーします。

## linuxdeployのダウンロード

https://github.com/linuxdeploy/linuxdeploy からAppImageファイルをダウンロードします。
ダウンロードしたファイルに実行属性をつけます。

## AppImageの作成

上でダウンロードしたlinuxdeployを使って、AppImageを作成します。
