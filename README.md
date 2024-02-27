# datascience-base

A reproducible environment for data-science with [RStudio](https://rstudio.com/)
and [data.table](https://rdatatable.gitlab.io/data.table/) based on
[Rocker](https://www.rocker-project.org/) images.

```
docker run -it --rm \
  -p 8787:8787 \
  -v $(shell pwd)/files:/root/files:Z \
  thomasfedb/datascience-base:latest
```
