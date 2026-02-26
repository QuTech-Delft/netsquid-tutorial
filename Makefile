PYTHON3        = python3
NETSQUID_USER  = $(shell ${PYTHON3} -c "import sys, urllib.parse as ul; print(ul.quote_plus('${NETSQUIDPYPI_USER}'))")
ifndef NETSQUIDPYPI_PWD
	ifdef NETSQUIDPYPI_PWD_FILEPATH
		NETSQUIDPYPI_PWD = $(shell ${PYTHON3} -c "import pathlib; print(pathlib.Path('${NETSQUIDPYPI_PWD_FILEPATH}').read_text().strip())")
	endif
endif
NETSQUID_PWD   = $(shell ${PYTHON3} -c "import sys, urllib.parse as ul; print(ul.quote_plus('${NETSQUIDPYPI_PWD}'))")
PIP_FLAGS      = --extra-index-url=https://${NETSQUID_USER}:${NETSQUID_PWD}@pypi.netsquid.org

help:
	@echo "install           Installs the package (editable)."


_check_variables:
ifeq ($(NETSQUID_USER),)
	$(error A username is required: please set the environment variable NETSQUIDPYPI_USER before installing)
endif
ifeq ($(NETSQUID_PWD),)
	$(error A password is required: please set the environment variable NETSQUIDPYPI_PWD before installing, or write the password to a file and set the environment variable NETSQUIDPYPI_PWD_FILEPATH before installing)
endif



install: _check_variables
	@$(PYTHON3) -m pip install -r requirements.txt ${PIP_FLAGS}

.PHONY: install
