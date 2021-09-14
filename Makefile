APP_MYSELF := flask_covid19_jupyter
DATA_DIR := notebooks/data
PYTHON := python
PIP_COMPILE := pip-compile
PIP := pip
PIP_REQUIREMENTS_DIR := .
NOTEBOOK_CLI := jupyter
JUPYTER := jupyter

all: run

venv_setup:
	python -m venv venv

venv_clean:
	echo "deactivate"
	rm -rf venv

pip_check:
	@echo "pip_check"
	$(PYTHON) -m pip check

pip_update:
	@echo "pip_update"
	$(PYTHON) -m pip install --upgrade pip

pip_compile: pip_update
	@echo "pip_compile"
	$(PIP_COMPILE) -r $(PIP_REQUIREMENTS_DIR)/requirements.in > $(PIP_REQUIREMENTS_DIR)/requirements.txt
	$(PYTHON) -m pip check

pip_install: pip_update
	@echo "pip_install"
	$(PIP) install -r $(PIP_REQUIREMENTS_DIR)/requirements.txt
	$(PYTHON) -m pip check

jupyter_install:
	@echo "install_jupyter"
	#beakerx-install
	$(JUPYTER) nbextension enable --py --sys-prefix gmaps
	$(JUPYTER) nbextension enable --py widgetsnbextension
	$(JUPYTER) labextension install @jupyter-widgets/jupyterlab-manager

jupyter_run:
	@echo "jupyter_run"
	jupyter notebook

prepare: venv_setup

install: pip_install jupyter_install

update: pip_compile install

check: pip_check

run: jupyter_run

