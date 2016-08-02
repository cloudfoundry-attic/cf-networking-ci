# container-networking-ci
Public config for the Container Networking team's CI

Keep credentials and other private config in our [private repo](https://github.com/cloudfoundry/container-networking-deployments)

View our team's [CI & metrics dashboard](http://dashboard.c2c.cf-app.com).

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
