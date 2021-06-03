# batou9150/nexus-pypi-deployer

[![Docker Pulls](https://img.shields.io/docker/pulls/batou9150/nexus-pypi-deployer.svg)](https://hub.docker.com/r/batou9150/nexus-pypi-deployer/)
[![Docker Stars](https://img.shields.io/docker/stars/batou9150/nexus-pypi-deployer.svg)](https://hub.docker.com/r/batou9150/nexus-pypi-deployer/)

Generate a default `~/.pip/pip.conf` and `~/.pypirc` for a nexus pypi repository

## usage in .gitlab-ci.yml

```
variables:
  NEXUS_PYPI_INDEX: "http://localhost:8081/repository/pypi-all/pypi"
  NEXUS_PYPI_INDEX_URL: "http://localhost:8081/repository/pypi-all/simple"
  NEXUS_PYPI_REPOSITORY: "http://localhost:8081/repository/pypi-internal/"
  NEXUS_PYPI_USERNAME: "admin"
  NEXUS_PYPI_PASSWORD: "admin123"

deploy:
  image: 
    name: batou9150/nexus-pypi-deployer
  script: 
    - python3 -m build
    - twine upload -r pypi-internal dist/*
```
