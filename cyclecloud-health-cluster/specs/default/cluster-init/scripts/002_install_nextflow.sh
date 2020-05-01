#!/bin/bash

cd /tmp
yum install wget curl java-1.8.0-openjdk which -y
curl -s https://get.nextflow.io | bash
mv nextflow /usr/local/bin
chmod +rx /usr/local/bin/nextflow
