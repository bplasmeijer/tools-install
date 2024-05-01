#!/bin/bash
set -e
source <(curl -sSL benco.io/lib) # Load libary from remote URL, it's safe!

GITHUB="getsops/sops"
VERSION=${1:-"$(get_latest_release $GITHUB)"}
INSTALL_DIR=${2:-"$HOME/.local/bin"}
CMD=sops
NAME="Mozilla Sops"
echo VERSION
pre_run
curl -sL "https://github.com/${GITHUB}/releases/download/v${VERSION}/sops-v${VERSION}.linux.amd64" -o "$INSTALL_DIR"/sops
chmod +x "$INSTALL_DIR"/sops

post_run
