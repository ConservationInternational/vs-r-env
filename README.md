# Dockerfile for Vital Signs Indicators R environment

This dockerfile sets up an R environment for calculating the Vital Signs 
indicators.

To build the docker image, first install Docker, then run:

```
docker build -t vs-r-env github.com/ConservationInternational/vs-r-env
```

To run the environment as a throw-away test version, run:

```
docker run -it --rm vs-r-env
```

# TODOs
- Make the vs-indicators-calc repo public so that this image can pull the 
    code without needing to worry about SSH keys, etc.
- Verify all needed R scripts run in the environment - likely need to apt-get 
    a few more packages.
