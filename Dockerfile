FROM fedora
MAINTAINER Kawatei Hikaru <hikaru@kawatei.me>

RUN dnf -y update && yum clean all
RUN dnf install make gcc gcc-c++ qt5-qtbase qt5-qtsvg qt5-qtsvg-devel boost boost-devel -y && dnf clean all

VOLUME ["/usr/app"]

WORKDIR /usr/app

CMD ["/bin/bash"]
