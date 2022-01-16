
.PHONY: edit
edit:
ifndef NAME
	@echo "parameter is missing."
	@echo "syntax:"
	@echo "    NAME=foobar make edit"
	@exit -1
endif
	treeline src/$(NAME).trln &

.PHONY: prettier
prettier:
	docker run --rm -v "$(PWD):/work" tmknom/prettier --parser=json --write 'src/*.trln'
