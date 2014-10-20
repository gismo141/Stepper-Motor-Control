SOURCE_FOLDER	:= .
BUILD_FOLDER	:= .build
FILE			:= Meilenstein_1a
TEMPLATE 		:= template.latex

all: pandoc
	cd $(BUILD_FOLDER) && latexmk -pdf -shell-escape $(FILE).tex && cp $(FILE).pdf .. && open ../$(FILE).pdf

pandoc: before
	cd $(BUILD_FOLDER) && pandoc -s -N --template=$(TEMPLATE) --listings --toc -f markdown+raw_tex+grid_tables --chapters ../$(SOURCE_FOLDER)/*.md -o $(FILE).tex

before:
	mkdir -p $(BUILD_FOLDER)

clean:
	rm -rf $(BUILD_FOLDER)