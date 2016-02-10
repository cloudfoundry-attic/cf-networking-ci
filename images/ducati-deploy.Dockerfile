FROM ruby

RUN gem install bosh_cli --no-ri --no-rdoc

CMD /bin/bash
