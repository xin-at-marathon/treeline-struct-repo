
.PHONY: prettier
prettier:
	docker run --rm -v "$(PWD):/work" tmknom/prettier --parser=json --write 'treeline/*.trln'
