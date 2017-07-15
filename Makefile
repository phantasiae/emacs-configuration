current-path := $(shell pwd)

files-list := $(shell find $(current-path)/.emacs.d/conf -type f)
dirs-list := $(shell find $(current-path)/.emacs.d/conf -type d)
target-dir-list :=  $(shell echo $(dirs-list) | sed "s|$(current-path)|~|1")
relative-path := ./emacs.d

define \n


endef

.PHONY: deploy clean remove-old
deploy:
	@ln -iv .emacs ~/
	mkdir $(target-dir-list) -p
	@$(foreach file, $(files-list), ln -iv $(file) $(subst $(current-path), ~, $(dir $(file))) ${\n})

clean:
	find ~/.emacs.d/conf -iname *~ -exec rm {} \;
	rm ~/.emacs~
	find ./.emacs.d/conf -iname *~ -exec rm {} \;
	rm ./.emacs~

remove-old:
	rm ~/.emacs.d/conf -rf
	rm ~/.emacs
