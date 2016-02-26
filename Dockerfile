FROM ubuntu
MAINTAINER Nicholas Baro  <nicholas.baro@sbgenomics.com>
RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN sudo apt-get update && sudo apt-get upgrade -y
RUN sudo sudo apt-get install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev

RUN cd opt && git clone https://github.com/Homebrew/linuxbrew.git 
ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig:/usr/lib64/pkgconfig:/usr/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/lib64/pkgconfig:/usr/share/pkgconfig:$PKG_CONFIG_PATH


# Until LinuxBrew is fixed, the following is required.
# See: https://github.com/Homebrew/linuxbrew/issues/47
ENV LINUXBREWHOME=opt/linuxbrew
ENV PATH=$LINUXBREWHOME/bin:$PATH
ENV MANPATH=$LINUXBREWHOME/man:$MANPATH
ENV PKG_CONFIG_PATH=$LINUXBREWHOME/lib64/pkgconfig:$LINUXBREWHOME/lib/pkgconfig:$PKG_CONFIG_PATH
ENV LD_LIBRARY_PATH=$LINUXBREWHOME/lib64:$LINUXBREWHOME/lib:$LD_LIBRARY_PATH

