# linuxbrew
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-linuxbrew-on-a-linux-vps

##Intro

LinuxBrew is a Linux-fork of the popular Mac OS X HomeBrew package manager.

LinuxBrew is package-management-software, which enables installing packages from source, on top on the system's default package management (e.g. "apt/deb" in Debi$


##Preparing for LinuxBrew - Debian/Ubuntu
For Debian/Ubuntu-based systems, run the following commands
$ sudo apt-get update
$ sudo apt-get upgrade -y
$ sudo sudo apt-get install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev
##Preparing for LinuxBrew - CentOS/RedHat
For RedHat/CentOS-based systems, run the following commands:

$ sudo yum update -y
$ sudo yum groupinstall -y "Development Tools"
$ sudo yum install -y \
        autoconf automake19 libtool gettext \
        git scons cmake flex bison \
        libcurl-devel curl \
        ncurses-devel ruby bzip2-devel expat-devel

##Step 3 - Test installation

To ensure those changes take effect, log-out and log-in again. The shell should then use these new settings.

To test these new settings, try:

$ which brew
/home/ubuntu/.linuxbrew/bin/brew
$ echo $PKG_CONFIG_PATH
/home/ubuntu/.linuxbrew/lib64/pkgconfig:/home/ubuntu/.linuxbrew/lib/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig:/usr/lib64/pkgconfig:/usr/lib/pkgconfig:/usr/lib/x8$



