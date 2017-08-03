FROM c2cnetworking/dev-postgres
RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  wget \
  make \
  gcc \
  bc \
  binutils \
  sed \
  ncurses-dev \
  dnsutils \
  git \
  jq \
  iptables \
  g++ \
  netcat \
  module-init-tools \
  &&  apt-get autoremove -yqq \
  &&  apt-get clean \
  &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ARG KERNELVER=4.9.36
RUN wget -nv -P /srv https://www.kernel.org/pub/linux/kernel/v4.x/linux-$KERNELVER.tar.gz \
 && tar -C /srv -zxf /srv/linux-$KERNELVER.tar.gz \
 && rm -f /srv/linux-$KERNELVER.tar.gz

# build kernel modules
RUN cd /srv/linux-$KERNELVER \
 && make defconfig \
 && ([ ! -f /proc/1/root/proc/config.gz ] || zcat /proc/1/root/proc/config.gz > .config) \
 # enable modules
 && echo 'CONFIG_IFB=m' >> .config \
 # patch modules
 && sed -i'.bak' '/hcd->amd_resume_bug/{s/^/\/\//;n;s/^/\/\//}' ./drivers/usb/core/hcd-pci.c \
 # build modules
 && make oldconfig \
 && make modules_prepare \
 && make modules \
 && make modules_install \
 && make clean

WORKDIR /srv/linux-$KERNELVER
