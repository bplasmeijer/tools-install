#!/bin/bash
set -e

INSTALL_DIR=${2:-"$HOME/.local/bin"}


curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.0/kind-linux-amd64
chmod +x ./kind
sudo mv kind $INSTALL_DIR
