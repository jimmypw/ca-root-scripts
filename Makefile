BUILDVER := $(shell git describe --tags)

.PHONY: package
package: 
	@echo Packaging version $(BUILDVER)
	fpm -s dir -t rpm -n ca-root-scripts -v $(BUILDVER) -C ca .
