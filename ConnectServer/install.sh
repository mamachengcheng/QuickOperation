#!/bin/bash
echo "password:"
read password
echo $password|sudo -S apt-get update
echo $password|sudo -S apt-get ssh
