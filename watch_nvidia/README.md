# watch_nvidia
crab起動時に，`watch nvidia-smi`用の新規ウィンドウを立ち上げるためのスクリプト．

## 前提
AppleScriptを使っているので，Macでないと使えない．

## 使い方
1. [watch_nvidia.scpt](./watch_nvidia.scpt)をローカルの適当な場所に保存する．
2. crab接続時にコマンドが実行されるよう，エイリアスを設定する．
```shell
$ vi ~/.zshrc
# 以下を追記
alias crab="osascript /path/to/nvidia.scpt && ssh crab"
```

## 既にお気に入りのウィンドウ配置がある場合
以下のコマンドで，ウィンドウの座標がわかる．これを[watch_nvidia.scpt](./watch_nvidia.scpt)の該当行（set the bounds~）に上書きすれば良い．
```shell
$ osascript -e "tell app \"Terminal\" to get the bounds of the front window"
```