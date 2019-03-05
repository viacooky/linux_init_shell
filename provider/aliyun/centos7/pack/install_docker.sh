#! /bin/bash

yum install -y docker docker-compose
systemctl enable docker
systemctl start docker