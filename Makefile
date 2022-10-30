########
# code #
########
ALL_SOURCES:=$(shell find . -type f -and -name "*.py")

#########
# rules #
#########
.PHONY: all
all: out/test.stamp
	@true

out/test.stamp: $(ALL_SOURCES)
	$(info doing [$@])
	@pymakehelper only_print_on_error python -m pytest tests
	@pymakehelper touch_mkdir $@

out/simple.stamp:
	@PYTHONPATH=. pytest
	@pymakehelper touch_mkdir $@

.PHONY: clean_hard
clean_hard:
	$(info doing [$@])
	$(Q)git clean -qffxd
