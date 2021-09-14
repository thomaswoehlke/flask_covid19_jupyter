all: run

setup:
	python -m venv venv

update:
	pip-compile -r requirements.in > requirements.txt

install:
	pip install -r requirements.txt
	beakerx-install
	jupyter nbextension enable --py --sys-prefix gmaps
	jupyter nbextension enable --py widgetsnbextension
	jupyter labextension install @jupyter-widgets/jupyterlab-manager


pull: update install

clean:
	echo "deactivate"
	rm -rf venv

run:
	jupyter notebook
