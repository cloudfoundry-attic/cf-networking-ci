# container-networking-ci
Public config for the Container Networking team's CI

Keep credentials and other private config in our [private repo](https://github.com/cloudfoundry/container-networking-deployments)

The main source code repo is [netman-release](https://github.com/cloudfoundry-incubator/netman-release).

View our team's [CI & metrics dashboard](http://dashboard.c2c.cf-app.com).

[Metrics dashboard by itself](https://p.datadoghq.com/sb/f3af7f8e2-baf5212773?tv_mode=true).

## to update a pipeline
```bash
./reconfigure $PIPELINE_NAME
```
where `$PIPELINE_NAME` might be `netman`, `images`, etc.

## running tests locally
create a docker machine called `rock-solid`:
```bash
docker-machine create --driver virtualbox --virtualbox-cpu-count 4 --virtualbox-memory 2048 rock-solid
```

in your `~/.bash_profile` make sure you add
```bash
eval $(docker-machine env rock-solid)
```
