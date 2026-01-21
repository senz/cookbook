TEX ?= cookbook.tex
NAME := $(basename $(TEX))
GEN_SCRIPT ?= /workspaces/cookbook/tools/create_cookbook.py
TITLE ?= My Cookbook
AUTHOR ?= Kosta

.PHONY: generate pdf index clean

generate:
	python3 $(GEN_SCRIPT) /workspaces/cookbook $(TEX) --title "$(TITLE)" --author "$(AUTHOR)"

pdf:
	xelatex $(TEX)
	makeindex $(NAME).idx
	xelatex $(TEX)
	xelatex $(TEX)

index:
	makeindex $(NAME).idx

clean:
	rm -f *.aux *.idx *.ilg *.ind *.log *.out *.toc
	rm -rf tex tex.*
