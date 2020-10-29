PACK_FILES = assets/ LICENSE pack.mcmeta README.md

package: $(PACK_FILES)
	@zip -r lambdamcresources.zip $(PACK_FILES)
