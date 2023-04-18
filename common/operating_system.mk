ifeq ($(shell uname -s), Linux)
	DU_ARGUMENTS = -block-size=1024 --apparent-size
else ifeq ($(shell uname -s), Darwin)
	DU_ARGUMENTS = -k -A
endif

define disk_usage_KiB
	@printf '%s KiB\n' `du $(DU_ARGUMENTS) $(2) | cpu -f1`
endef
