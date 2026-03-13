ISO_NAME=puenteos.iso

.PHONY: all clean config build iso

all: iso

clean:
	lb clean --purge

config:
	lb config

build:
	lb build

iso: clean config build
	@if [ -f live-image-amd64.hybrid.iso ]; then \
		mv -f live-image-amd64.hybrid.iso $(ISO_NAME); \
	fi
