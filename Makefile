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

.PHONY: clean_hard
clean_hard:
	$(info doing [$@])
	$(Q)git clean -qffxd
