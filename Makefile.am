# Makefile.am: Automake template for bash-dot-files.
#
# Process this file with automake to create Makefile.in
#
BUILD_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

bin_SCRIPTS = build-llama.cpp-rocm install-llama.cpp-rocm
EXTRA_DIST = build-llama.cpp-rocm.in \
	     install-asdf.in \
	     build-rocm.in \
	     install-intel-oneapi-hpc.in \
	     install-llama.cpp-rocm.in \
	     install-ucx.in \
	     install-ompi.in \
	     install-rocm-binaries.in

AM_DEFAULT_SOURCE_EXT = .in

.PHONY: all clean-local


all: llama.cpp-rocm

llama.cpp-rocm: build-llama.cpp-rocm build-rocm install-rocm-binaries
	$(BUILD_DIR)install-rocm-binaries
	$(BUILD_DIR)build-llama.cpp-rocm $(abs_srcdir)

install: install-exec-local

install-exec-local: install-llama.cpp-rocm
	$(BUILD_DIR)install-llama.cpp-rocm

clean:
	rm -rf src

build-llama.cpp-rocm: $(top_srcdir)/build-llama.cpp-rocm.in

install-asdf: $(top_srcdir)/install-asdf.in

install-llama.cpp-rocm: $(top_srcdir)/install-llama.cpp-rocm.in

install-intel-oneapi-hpc: $(top_srcdir)/install-intel-oneapi-hpc.in

install-rocm-binaries: $(top_srcdir)/install-rocm-binaries.in
