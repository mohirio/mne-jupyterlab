# mnelab

JupyterLab Docker Image pre-configured with MNE/Plotly/ipywidgets.

All the needed extensions for JupyterLab are pre-installed so there should 
be no widget rendering issues.

To run:
```bash
docker run -p 8888:8888 mnelab
```

This image is configured to run JupyterLab by default.

To start with classic notebook:
```bash
docker run -e JUPYTER_ENABLE_LAB="" -p 8888:8888 mnelab
```

To build locally:
```bash
docker build -t mohirio/mnelab .
```

