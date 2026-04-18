#!/bin/bash
# Ensures Quarto uses the correct Python environment for this project.
# Run this instead of 'quarto render' if you get a 'No module named yaml' error.
export QUARTO_PYTHON=/Users/troyaltus/opt/bin/python3
quarto render "$@"
