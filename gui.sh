# subscription managerが動かないと、動かない。
dnf update -y

dnf install -y cifs-utils
dnf -y groupinstall "Server with GUI"

# macの日本語キーボードの場合は下のレイアウトを反映させる。
# localectl list-x11-keymap-models
localectl set-x11-keymap jp apple_laptop

systemctl set-default graphical.target

# guiで普段使いするなら、vagrantユーザーはvagrantコマンドから操作のみ使うことにして、
# 普段づかい用のユーザーは別途作成して使った方が無難。
# useradd -m $VAGRANT_USERNAME
# echo -e $VAGRANT_PASSWORD"\n"$VAGRANT_PASSWORD | passwd $VAGRANT_USERNAME
