all:

lint: shellcheck shfmt

shellcheck:
	shellcheck $$(shfmt --find .)

shfmt:
	shfmt -d -ci $$(shfmt --find .)

.PHONY: all lint shellcheck shfmt
