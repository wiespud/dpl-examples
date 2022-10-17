DESTDIR = .
INSTALL = install
DTC = dtc

dts_sources := $(wildcard */*/*.dts)
targets = $(dts_sources:.dts=.dtb)

%.dtb: %.dts
	$(DTC) -I dts -O dtb $< -o $@

all: $(targets)

clean:
	$(RM) -r $(targets)

.PHONY: all install clean
