# mnelab

JupyterLab Docker Image pre-configured with 
[MNE](https://github.com/mne-tools/mne-python)/
[Plotly](https://github.com/plotly/plotly.py)/
[ipywidgets](https://github.com/jupyter-widgets/ipywidgets) and more for interactive EEG analysis.

All the needed JupyterLab extensions are pre-installed so there should 
be no widget rendering issues.


## Usage 
Pull the image:
```bash
docker pull mohirio/mnelab
```
And run:
```bash
docker run -p 8888:8888 -v "/your/work/directory":/home/jovyan/work mohirio/mnelab
```

## Configuration
This image uses [Base Notebook](https://github.com/jupyter/docker-stacks/tree/master/base-notebook) one layer underneath,
so it can be used with [JupyterHub](https://github.com/jupyterhub/jupyterhub)

Please refer to [Jupyter Docker Stacks on ReadTheDocs](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html)
to find more about configuring the run command.

e.g. to start with classic notebook:
```bash
docker run -e JUPYTER_ENABLE_LAB="" -p 8888:8888 mnelab
```

### Installed Packages:
[MNE-Python](https://github.com/mne-tools/mne-python)\
[numpy](https://github.com/numpy/numpy)\
[matplotlib](https://github.com/matplotlib/matplotlib)\
[Plotly](https://github.com/plotly/plotly.py)\
[ipywidgets](https://github.com/jupyter-widgets/ipywidgets)

### JupyterLab extensions:
[@jupyter-widgets/jupyterlab-manager](https://github.com/jupyter-widgets/ipywidgets/tree/master/packages/jupyterlab-manager)\
[@jupyterlab/plotly-extension](https://github.com/jupyterlab/jupyter-renderers/tree/master/packages/plotly-extension)\
[plotlywidget](https://www.npmjs.com/package/plotlywidget)\
[@mohirio/jupyterlab-horizon-theme](https://github.com/mohirio/jupyterlab-horizon-theme)
