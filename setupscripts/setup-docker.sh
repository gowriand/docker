#!/bin/bash

curl -fsSL https://test.docker.com -o /tmp/test-docker.sh
sudo -x /tmp/test-docker.sh
sudo usermod -a -G  docker jenkins
