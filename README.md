# docker-gistic2
Dockerfile to create a container with GISTIC2 (2.0.23)

```
### Build image
docker build -t sander/gistic2 .

### Start the container
docker run --name gistic2 -it sander/gistic2 bash

### Start the container with volume mounted
docker run --name gistic2 -it -v /gistic_data/:~/local_gistic_data/ sander/gistic2 bash

```

When the container is started, you can run the example in `/home/gistic/` to verify GISTIC2 is working correctly.

```
### Run the example
./run_gistic_example
