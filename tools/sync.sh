#!/usr/bin/env bash
# sync.sh: Synchronize all repositories from StatiXOS' GitHub

# Set common variables
## StatiXOS (synced through 'repo')'s path
STATIX="${HOME}/stx"

## Current StatiXOS branch
BRANCH="udc"

## Full path to 'repo'
REPO="$(which repo)"

# Initialize syncing process
## Change directory to StatiXOS
cd "${STATIX}" || {
        echo "[ERROR] Failed to change directory to ${STATIX}."
        echo "        Are you sure it exists?"
        exit 0
}

## Initialize syncing
"${REPO}" sync --force-sync --no-clone-bundle --current-branch --no-tags -j"$(nproc)" || {
        echo "[ERROR] Failed to sync with 'repo'. Aborting..."
        exit 0
}
