# Cookbook

This repo is set up for the Cooklang "cookbook creation" flow.

## Generate a cookbook

1. Open the dev container.
2. Run the generator:
   - `python3 /workspaces/cookbook/tools/create_cookbook.py /workspaces/cookbook cookbook.tex --title "My Cookbook" --author "Your Name"`

## Build the PDF

- `make pdf` (uses `cookbook.tex` by default, compiled with XeLaTeX)
- `make pdf TEX=mybook.tex` (custom file name)

## Clean build artifacts

- `make clean`
