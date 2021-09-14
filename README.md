# flask_covid19_jupyter

* [Git Repository](https://github.com/thomaswoehlke/flask_covid19_jupyter.git)
* [Issues](https://github.com/thomaswoehlke/flask_covid19_jupyter/issues) 

## setup project 

### git
```bash
git clone git@github.com:thomaswoehlke/flask_covid19_jupyter.git
```

### Linux
```bash
make setup
. ./venv/bin/activate
make install
make update
make run
```

## Useful Resources:
* [Github-flavored Markdown](https://guides.github.com/features/mastering-markdown/)
* [pypi.org | Python Package Index](https://pypi.org/)
* [jupyter Notebooks](https://jupyter.org/documentation)

### Work with Data 
* [pandas](https://pandas.pydata.org/)

### Data Visualization
* [matplotlib](https://matplotlib.org/)
* [seaborn](https://seaborn.pydata.org/)

### Package Info at pypi.org
* [wheel](https://pypi.org/project/wheel/)
* [build](https://pypi.org/project/build/)
* [pip-tools](https://pypi.org/project/pip-tools/)
* [pipenv](https://pypi.org/project/pipenv/)
* [virtualenv](https://pypi.org/project/virtualenv/)
* [pytoolbox](https://pypi.org/project/pytoolbox/)
* [python-dotenv](https://pypi.org/project/python-dotenv/)
* [Cython](https://pypi.org/project/Cython/)
* [ipython](https://pypi.org/project/ipython/)
* [jupyter](https://pypi.org/project/jupyter/)
* [notebook](https://pypi.org/project/notebook/)
* [jupyterlab_widgets](https://pypi.org/project/jupyterlab_widgets/)
* [prettytable](https://pypi.org/project/prettytable/)
* [ipyleaflet](https://pypi.org/project/ipyleaflet/)
* [ipywidgets](https://pypi.org/project/ipywidgets/)
* [perspective-python](https://pypi.org/project/perspective-python/)
* [k3d](https://pypi.org/project/k3d/)
* [beakerx](https://pypi.org/project/beakerx/)
* [bqplot](https://pypi.org/project/bqplot/)
* [Pillow](https://pypi.org/project/Pillow/)
* [fiona](https://pypi.org/project/fiona/)
* [jinja2](https://pypi.org/project/jinja2/)
* [wget](https://pypi.org/project/wget/)
* [NumPy](https://pypi.org/project/NumPy/)
* [python-dateutil](https://pypi.org/project/python-dateutil/)
* [pytz](https://pypi.org/project/pytz/)
* [numexpr](https://pypi.org/project/numexpr/)
* [bottleneck](https://pypi.org/project/bottleneck/)
* [pandas](https://pypi.org/project/pandas/)
* [SciPy](https://pypi.org/project/SciPy/)
* [scikit-image](https://pypi.org/project/scikit-image/)
* [xarray](https://pypi.org/project/xarray/)
* [matplotlib](https://pypi.org/project/matplotlib/)
* [seaborn](https://pypi.org/project/seaborn/)
* [python-igraph](https://pypi.org/project/python-igraph/)
* [networkx](https://pypi.org/project/networkx/)
* [pygraphviz](https://pypi.org/project/pygraphviz/)
* [pydot](https://pypi.org/project/pydot/)
* [pyyaml](https://pypi.org/project/pyyaml/)
* [lxml](https://pypi.org/project/lxml/)
* [osmnx](https://pypi.org/project/osmnx/)
* [gmaps](https://pypi.org/project/gmaps/)
* [cartopy](https://pypi.org/project/cartopy/)
* [oneworld](https://pypi.org/project/oneworld/)
* [momepy](https://pypi.org/project/momepy/)
* [OWSLib](https://pypi.org/project/OWSLib/)
#### to update this List run:
```bash
./getPyPiInfos.py
```

## run Jupyter Notebooks

### run
This will start the Server and open your Default Web Browser: 
```bash
make run
```

### go to the Notebooks
You will find the Notebooks in the Subdirectory [notebooks](http://localhost:8888/tree/notebooks)

### Download the Data Files
Open [data_download.ipynb](notebooks/data_download.ipynb) and restart.

### Notebooks for each Data File Source
* ECDC: [nb_ecdc.ipynb](notebooks/nb_ecdc.ipynb)
* OWID: [nb_owid.ipynb](notebooks/nb_owid.ipynb)
* RKI: [nb_rki.ipynb](notebooks/nb_rki.ipynb)
* Vaccination: [nb_vaccination.ipynb](notebooks/nb_vaccination.ipynb)
* WHO: [nb_who.ipynb](notebooks/nb_who.ipynb)
