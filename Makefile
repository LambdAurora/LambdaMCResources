PACK_FILES = assets/ LICENSE pack.mcmeta README.md
OUT_FILE = lambdamcresources.zip
PNG_TILDE_FILES = $(shell find assets/ -type f -name '*.png~')
AUTOSAVE_KRITA_FILES = $(shell find assets/ -type f -name '*.png-autosave.kra')

.PHONY: clean

dist: $(PACK_FILES)
	@zip -r $(OUT_FILE) $(PACK_FILES)

clean: clean_png_tilde clean_autosave_krita_files
	@rm -f $(OUT_FILE)

clean_png_tilde: $(PNG_TILDE_FILES)
ifneq ($(PNG_TILDE_FILES),)
	@rm $^
	@echo $^
endif

clean_autosave_krita_files: $(AUTOSAVE_KRITA_FILES)
ifneq ($(AUTOSAVE_KRITA_FILES),)
	@rm $^
	@echo $^
endif
