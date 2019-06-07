FROM jupyter/base-notebook

# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.

USER $NB_UID

RUN conda install --quiet --yes \
    'numpy' \
    'plotly' \
    'matplotlib' \
    'mne' \
    'ipywidgets' &&\
    conda clean -tipsy && \
    export NODE_OPTIONS=--max-old-space-size=4096 && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38 --no-build && \
    jupyter labextension install plotlywidget@0.11.0 --no-build && \
    jupyter labextension install @jupyterlab/plotly-extension@0.18.2 --no-build && \
    jupyter labextension install @mohirio/jupyterlab-horizon-theme --no-build && \
    jupyter lab build && \
    npm cache clean --force && \
    unset NODE_OPTIONS && \
    rm -rf $CONDA_DIR/share/jupyter/lab/staging && \
    rm -rf /home/$NB_USER/.cache/yarn

ENV JUPYTER_ENABLE_LAB=yes