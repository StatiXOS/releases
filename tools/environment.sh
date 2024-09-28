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

# Select package type for ${PKG}
case "${PACKAGE}" in
  "Recovery-flashable (otapackage)")
    echo "PACKAGE=otapackage" >> "$GITHUB_ENV"
  ;;
  "Bootloader-flashable (updatepackage)")
    echo "PACKAGE=updatepackage" >> "$GITHUB_ENV"
  ;;
esac

# Set ${CLEAN} to true for 'make clean'
if [ -n "${CLEAN}" ]; then
    echo "CLEAN=true" >> "$GITHUB_ENV"
else
    # Otherwise, set it to 'false' by default
    echo "CLEAN=false" >> "$GITHUB_ENV"
fi