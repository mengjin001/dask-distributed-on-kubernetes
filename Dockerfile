FROM hammerlab/mhcflurry:latest

MAINTAINER Tim O'Donnell <timodonnell@gmail.com>

# dask distributed scheduler bokeh ui
EXPOSE 8787

# dask distributed scheduler http
EXPOSE 9786 

# dask distributed scheduler worker interface
EXPOSE 8786

COPY . ./mhcflurry-cloud

RUN venv-py3/bin/pip install ./mhcflurry-cloud

