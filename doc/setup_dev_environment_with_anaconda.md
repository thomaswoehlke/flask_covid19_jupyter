# Setup the Working/Dev-Environment with Anaconda3 and PyCharm

### 1. Install Anaconda3 
* [from Download: https://www.anaconda.com/products/individual](https://www.anaconda.com/products/individual)
* [more Infos about installing](Python-Installation.pdf)

### 2. after having Anaconda3 installed: 
* copy the Anaconda-Lines in ~/.bashrc to a new file ~/.bash_aliases_anaconda3 
* comment out the Anaconda-Lines in ~/.bashrc 
* include ~/.bash_aliases_anaconda3 in ~/.bashrc
* in ~/.bashrc it is now only one line to comment out, if you do not want to use Anaconda3
* you can include ~/.bash_aliases_anaconda3 in your bash-shell where and when you need it.

## start and run

### Start Jupyter: 
````bash 
make anaconda_env
make run
````
### Start Anaconda-Navigator
````bash 
make anaconda_env
make anaconda_navigator
````
Im anaconda-navigator: Jupyter-Lab

## Setup Project in PyCharm
### git checkout from RUB.NOC Gitlab:
````bash 
cd ~/RUB
git clone git@git.noc.ruhr-uni-bochum.de:thomaswoehlke/python-050005.git
````
### in PyCharm: New -> Project
#### in PyCharm: New -> Project
![pycharm new project with anaconda 01](img/pycharm_new_project_with_anaconda_01.png)
#### in PyCharm: New -> Project -> Project Interpreter
![pycharm new project with anaconda 02](img/pycharm_new_project_with_anaconda_02.png)