# container-networking-ci
Public config for the Container Networking team's CI

Keep credentials and other private config in our [private repo](https://github.com/cloudfoundry/container-networking-deployments)

## to update a pipeline
```
fly -t c2c set-pipeline \
  -p ducati \
  -c ~/workspace/container-networking-ci/pipelines/ducati.yml \
  -l ~/workspace/container-networking-deployments/pipeline-credentials.yml
```

## running tests locally
create a docker machine called `rock-solid`:
```
docker-machine create --driver virtualbox --virtualbox-cpu-count 4 --virtualbox-memory 2048 rock-solid
```

in your `~/.bash_profile` make sure you add
```
eval $(docker-machine env rock-solid)
```
