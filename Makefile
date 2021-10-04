APP_MYSELF := flask_covid19_jupyter
DATA_DIR := notebooks/data
PYTHON := python
PIP_COMPILE := pip-compile
PIP := pip
PIP_REQUIREMENTS_DIR := etc
NOTEBOOK_CLI := jupyter
JUPYTER := jupyter
ANACONDA_NAVIGATOR := anaconda-navigator

.PHONY: all

all: run

venv_setup:
	python -m venv venv

venv_clean:
	echo "deactivate"
	rm -rf venv

pip_env:
	. ./venv/bin/activate

pip_check:
	@echo "pip_check"
	$(PYTHON) -m pip check

pip_update:
	@echo "pip_update"
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install --upgrade setuptools
	$(PYTHON) -m pip install --upgrade build

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
	$(JUPYTER) notebook

anaconda_env:
	. ~/.bash_aliases_anaconda3

anaconda_navigator: #anaconda_env
	@echo "uncomment 'anaconda_env' if anaconda-navigator will not start"
	@echo "be patient, the start of anaconda-navigator will take some time"
	@echo "after anaconda-navigator started and is running, you should lauch: anaconda-navigator -> home -> jupyterlab"
	$(ANACONDA_NAVIGATOR)

# see: doc/setup_dev_environment_with_venv.md
clean: venv_clean

# see: doc/setup_dev_environment_with_venv.md
setup: venv_setup

# see: doc/setup_dev_environment_with_venv.md
install: pip_install jupyter_install

# see: doc/setup_dev_environment_with_venv.md
check: pip_check

# see: doc/setup_dev_environment_with_venv.md
update: pip_compile install

# see: doc/setup_dev_environment_with_venv.md
start: install

# see: doc/setup_dev_environment_with_anaconda.md
anaconda: anaconda_navigator

# see: doc/setup_dev_environment_with_anaconda.md
start: install

run: jupyter_run
