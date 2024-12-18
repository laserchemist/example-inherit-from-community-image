# Inherit from an upstream image
FROM jupyter/scipy-notebook:python-3.11

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

RUN conda install --yes -c conda-forge rdkit xarray dask netCDF4 bottleneck cartopy seaborn nc-time-axis


RUN ls
