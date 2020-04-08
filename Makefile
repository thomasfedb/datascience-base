build:
	@docker build --force-rm -t thomasfedb/datascience-base .

run:
	@docker run -it --rm \
		-e PASSWORD=password \
		-p 8787:8787 \
		-v $(shell pwd)/files:/home/rstudio/files:Z \
		thomasfedb/datascience-base
