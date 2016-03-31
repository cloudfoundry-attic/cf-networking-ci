FROM ruby

RUN gem install bosh_cli --no-ri --no-rdoc
RUN curl -L -o /usr/local/bin/spiff https://github.com/cloudfoundry-incubator/spiff/releases/download/v1.0.7/spiff_linux_amd64
RUN chmod +x /usr/local/bin/spiff
ADD ducatify-bin/ducatify /usr/local/bin/ducatify

CMD /bin/bash
