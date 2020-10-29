PACK_FILES = assets/ LICENSE pack.mcmeta README.md
OUT_FILE = lambdamcresources.zip
PNG_TILDE_FILES = $(shell find assets/ -type f -name '*.png~')

.PHONY: clean

dist: $(PACK_FILES)
	@zip -r $(OUT_FILE) $(PACK_FILES)

clean: clean_png_tilde
	@rm -f $(OUT_FILE)

clean_png_tilde: $(PNG_TILDE_FILES)
ifneq ($(PNG_TILDE_FILES),)
	@rm $^
endif
