build:
	@docker build --force-rm -t thomasfedb/datascience-base .

enter:
	@docker run -it --rm localhost/thomasfedb/datascience-base:latest bash

run:
	@docker run -it --rm \
		-p 8787:8787 \
		-v $(shell pwd)/files:/root/files:Z \
		localhost/thomasfedb/datascience-base
