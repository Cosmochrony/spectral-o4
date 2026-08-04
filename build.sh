#!/bin/bash

# O4 paper build script: regenerates the figure from code/, verifies it
# against ARTIFACT_SHA256SUMS, then compiles the manuscript.
# Documented reproduction command (fresh clone): bash build.sh

set -e  # Stop at the first failure rather than compiling against stale/absent figures.

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}=== Step 1: regenerate figures from code/ ===${NC}"

VENV_DIR=".venv"
if [ ! -d "$VENV_DIR" ]; then
    echo -e "${YELLOW}Creating virtual environment: $VENV_DIR${NC}"
    python3 -m venv "$VENV_DIR"
fi
source "$VENV_DIR/bin/activate"
pip install --quiet -r code/requirements.txt

cd code
python3 fig_km_contraction.py
cd ..

echo -e "${GREEN}=== Step 2: verify regenerated figures against ARTIFACT_SHA256SUMS ===${NC}"
if ! shasum -a 256 -c ARTIFACT_SHA256SUMS; then
    echo -e "${RED}Checksum mismatch: a regenerated figure does not match ARTIFACT_SHA256SUMS.${NC}"
    echo -e "${RED}Do not proceed to compile against a figure that does not match the recorded artefact.${NC}"
    exit 1
fi

deactivate

echo -e "${GREEN}=== Step 3: compile the manuscript ===${NC}"
bash compile.sh
