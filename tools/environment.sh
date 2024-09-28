#!/usr/bin/env bash
# environemnt.sh: Configure environment for the 'build' job

# Select device codename for ${TARGET_DEVICE}
case "${DEVICE}" in
  "Xiaomi POCO M6 Pro 5G / Redmi 12 5G / Redmi Note 12R")
    echo "DEVICE=sky" >> "$GITHUB_ENV"
  ;;
  "Xiaomi SM7125 family")
    echo "DEVICE=miatoll" >> "$GITHUB_ENV"
  ;;
esac
