# Docker file for j2cli

This will install j2cli with yaml support

## Usage

* Run with environment vars, accessible with `{{ envvars.VAR }}`
```
docker run -e VAR -i -v /path/to/templates:/data/templates jveldkam/j2 --import-env=envvars templates/template.j2
```
* Run with environment vars and yaml:
```
docker run -e VAR -i -v /path/to/templates:/data/templates -v /path/to/vars:/data/vars jveldkam/j2 --import-env=envvars templates/template.j2 vars/vars.yaml
```
