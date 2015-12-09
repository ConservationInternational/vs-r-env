# Dockerfile for Vital Signs Indicators R environment

This dockerfile sets up an R environment for calculating the Vital Signs 
indicators.

To build the docker image, first install Docker, then run:

```
docker build -t vs-r-env
```

To run the environment as a throw-away test version, run:

```
docker run -it --rm vs-r-env
```

# TODOs
- Setup shared data folder so Drive data is retained locally
- Verify all needed R scripts run in the environment - likely need to apt-get 
    a few more packages.
