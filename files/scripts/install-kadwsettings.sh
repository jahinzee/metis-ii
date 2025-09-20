#!/bin/bash
set -oue pipefail

SOURCE_REPO="https://github.com/Hou-Rui/kadwsettings"

dnf install -y \
    python3 \
    python-pyside6 \
    python3-tinycss2 \
    kf6-kirigami \
    kf6-kirigami-addons \
    git

tempdir="$(mktemp -d)"
cd "$tempdir"
git clone "$SOURCE_REPO" --depth=1
cd kadwsettings
./install.sh /var/usrlocal/
cd /
rm -r "$tempdir"
