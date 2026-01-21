# Cookbook

This repo is set up for the Cooklang "cookbook creation" flow.

## Generate a cookbook

1. Open the dev container.
2. Run the generator:
   - `make generate`

## Build the PDF

- `make pdf` (uses `cookbook.tex` by default, compiled with XeLaTeX)
- `make pdf TEX=mybook.tex` (custom file name)

## Clean build artifacts

- `make clean`

## License

Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International. See `LICENSE`.
