.DEFAULT_GOAL := all

PANDOC          = /usr/bin/pandoc
PANDOC_OPTIONS  = --standalone 
PANDOC_OPTIONS += --self-contained 
PANDOC_OPTIONS += --section-divs 
PANDOC_OPTIONS += --toc 
PANDOC_OPTIONS += --toc-depth=3
PANDOC_OPTIONS += -V toctitle:"Table of contents" 
PANDOC_OPTIONS += --template ./default.html

SASS						= /usr/local/rvm/gems/ruby-2.4.1/bin/sass
SASS_OPTIONS		= --scss

SCSS_FILES			= $(filter-out prince.scss, $(shell find ./ -name '*.scss'))

PRINCE          = /usr/bin/prince
PRINCE_OPTIONS  = --style=./prince.css

PDFJAM          = /usr/bin/pdfjam
PDFJAM_OPTIONS  = --quiet

style-guide.html: style-guide.md
	$(PANDOC) $(PANDOC_OPTIONS) $< -o $@

style-guide.pdf: style-guide.html prince.css
	$(PRINCE) $(PRINCE_OPTIONS) $< -o - | \
	$(PDFJAM) $(PDFJAM_OPTIONS) /dev/stdin 1- -o $@

prince.css: prince.scss $(SCSS_FILES) 
		$(SASS) $(SASS_OPTIONS) $< $@

.PHONY: all clean clean-dist dev-install
all: style-guide.pdf

clean: ; rm style-guide.html 
clean-dist: ; rm style-guide.pdf

dev-install: ;
	sudo apt-get install texlive-extra-utils -y
	wget https://github.com/jgm/pandoc/releases/download/2.1.1/pandoc-2.1.1-1-amd64.deb
	sudo dpkg -i pandoc-2.1.1-1-amd64.deb
	rm pandoc-2.1.1-1-amd64.deb
	wget http://www.princexml.com/download/prince_11.3-1_ubuntu16.04_amd64.deb
	sudo dpkg -i prince_11.3-1_ubuntu16.04_amd64.deb
	rm prince_11.3-1_ubuntu16.04_amd64.deb
