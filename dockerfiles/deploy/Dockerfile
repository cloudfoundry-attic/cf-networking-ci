FROM ruby

RUN apt-get update -y && apt-get install -y jq
RUN curl -L -o /usr/local/bin/bosh https://s3.amazonaws.com/bosh-init-artifacts/bosh-cli-2.0.1-darwin-amd64 && chmod +x /usr/local/bin/bosh
RUN curl -L -o /usr/local/bin/spiff https://github.com/cloudfoundry-incubator/spiff/releases/download/v1.0.7/spiff_linux_amd64
RUN chmod +x /usr/local/bin/spiff
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx && mv cf /usr/local/bin/cf

CMD /bin/bash
