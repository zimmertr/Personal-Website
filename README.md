# Personal-Website
* [Summary](#summary)
* [Instructions](#instructions)

<hr>

## Summary

This repository contains the source for my simple personal website. It uses GitHub Actions to automatically build and publish container images. It is deployed to Kubernetes as part of [this](https://github.com/zimmertr/Kubernetes-Manifests/tree/main/public/personal-website) Kustomize project. 

![Alt text](https://raw.githubusercontent.com/zimmertr/Personal-Website/main/screenshot.png "Website Screenshot")

<hr>

## Instructions

```bash
docker run -it -p 80:80 $(docker build -q .)
```
