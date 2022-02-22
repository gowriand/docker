#!/bin/bash

curl -fsSL https://get.docker.com |sh
sudo usermod -a -G  docker jenkins
