# Rbio_docker

A docker container with some of the R tools I commonly use.

Tools are listed in `install.R`.

Github actions builds the container and pushes to docker hub.
Docker 'meta' action is used to tag images based on git tags and branches.  Any new commits to `main` branch will be tagged with `main`, any git tags will be tagged with `latest` and the git tag.
To create a git tag:
```
git tag -a v0.1 -m "Updated to version 0.1"
git push origin v0.1
```


Run with singularity using `run_rstudio.sh`
