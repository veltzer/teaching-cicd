########
# code #
########
ALL_SOURCES:=$(shell find . -type f -and -name "*.py")

#########
# rules #
#########
.PHONY: all
all: test.stamp
	@true

test.stamp: $(ALL_SOURCES)
	PYTHONPATH=. pytest
	touch $@
