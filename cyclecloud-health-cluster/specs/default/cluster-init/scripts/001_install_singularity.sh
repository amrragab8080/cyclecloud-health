#!/bin/bash
yum clean all
export VERSION=$(jetpack config cyclecloud.singularity.version)

yum groupinstall "Development Tools" -y
yum install epel-release openssl-devel libuuid-devel cryptsetup wget curl libarchive-devel squashfs-tools -y
yum install libseccomp libseccomp-devel golang singularity -y


#cd /tmp
#wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz
#tar xvf singularity-$VERSION.tar.gz
#cd singularity
#./mconfig --prefix=/usr/local
#make -j $(nproc) -C ./builddir
#make -C ./builddir install
