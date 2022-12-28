# ipscan

## 概要

ネットワークに接続済みのIPアドレス（ホストアドレス）を全て検索するシェルスクリプトです。

## 動作環境

以下の環境にて、動作検証済みです。

### ソフトウェア

- Debian 11.6
- bash version 5.1.4
- git version 2.30.2

### ネットワーク内のIPアドレス構成

- ネットワークアドレス：192.168.1.0/24
- ブロードキャストアドレス：192.168.1.255
- ホストアドレス：192.168.1.1～192.168.1.254

## 使い方

1. 任意のディレクトリ内に`git clone`コマンドでダウンロードします。

    ```none
    $ git clone http://github.com/kumanuron-1910/ipscan.git
    ```

2. `cd`コマンドで`ipscan`ディレクトリに移動し、`ipscan.sh`を実行します。

    ```none
    $ ./ipscan.sh
    Scanning for IP address...
    [*] Connected : 192.168.1.1
    [*] Connected : 192.168.1.2
    [*] Connected : 192.168.1.4
    [*] Connected : 192.168.1.6
    [*] Connected : 192.168.1.7
    Scanning is completed!!
    The text file has been created.

    ------------ Result ------------
    Total IP address connected : 5
    Created text file : ipscan_result.txt
    ```

3. `cat`コマンドで作成された`ipscan_result.txt`を表示すると、接続済みのIPアドレス（ホストアドレス）の一覧を見ることができます。

    ```none
    $ cat ipscan_result.txt
    192.168.1.1
    192.168.1.2
    192.168.1.4
    192.168.1.6
    192.168.1.7
    ```

## 備考

ホストアドレスをすべて検索するため、かなり時間がかかります。
