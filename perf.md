# Container Networking Performance Suite
Container networking performance tests will be conducted on the following environment: **toque.c2c.cf-app.com**

## Setup
### Number of Diego Cells
0. Git checkout [container-networking-ci](https://github.com/cloudfoundry-incubator/container-networking-ci) repository
0. Set `toque-deploy` `CELL_COUNT` to the number of desired Diego cells in [pipelines/netman.yml](pipelines/netman.yml)
     ```yaml
      - name: toque-deploy
        serial_groups: [toque]
        plan:
          - aggregate:
            - get: container-networking-ci
              trigger: false
               # omit for brevity
          - aggregate:
               # omit for brevity
            - task: generate-toque-manifests
              file: container-networking-ci/tasks/generate-deployment-manifests.yml
              params:
                ENVIRONMENT_NAME: toque
                CELL_COUNT: 5
      ```

0.  Update pipeline
```
$ ./reconfigure netman
```
0.  Git commit `CELL_COUNT` changes back to [container-networking-ci](https://github.com/cloudfoundry-incubator/container-networking-ci)
0.  Deploy `CELL_COUNT` changes using `toque-deploy` stage in [CI](https://c2c.ci.cf-app.com/pipelines/netman/jobs/toque-deploy)
