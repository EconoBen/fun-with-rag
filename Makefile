.ONESHELL:
.DELETE_ON_ERROR:

SHELL := /bin/bash

.PHONY: activate


activate:
	@echo "Connecting pyenv & poetry..."
	poetry config virtualenvs.in-project true &&\
	poetry env use $$(pyenv which python) && \
	poetry config virtualenvs.prefer-active-python true 
	@echo "Done!"