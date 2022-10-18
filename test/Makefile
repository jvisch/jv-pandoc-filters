options += --number-sections 
options += --toc 
options += --embed-resources --standalone

options += --lua-filter=hallo-filter.lua
options += --lua-filter=jv-add-date.lua


input = example.md

out = example
target = html

.PHONY: prepare clean

$(out).$(target): $(input) prepare
	pandoc $(options) -o $(out).$(target) $(input)

prepare:
	for t in $(input); do pandoc -s --id-prefix $$t -o $$t $$t; done

clean:
	-rm $(out).$(target)

