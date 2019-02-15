# Helper functions
define steps
	$(if $(MAKECMDGOALS),\
		$(if $(findstring all,$(MAKECMDGOALS)),\
			stepA_mal,\
			$(filter step%, $(MAKECMDGOALS))),\
		stepA_mal)
endef

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all : stepA_mal

step% : src/step%.lisp
	sbcl --load $< --eval "(sb-ext:save-lisp-and-die #p\"$@\" :toplevel #'mal:main :executable t)" --quit

clean:
	find . -maxdepth 1 -name 'step*' -executable -delete
	rm -f *.lib *.fas[l] images/*
