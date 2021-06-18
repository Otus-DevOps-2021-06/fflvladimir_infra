#!/bin/bash

yc compute instance create \
  --name reddit-full \
  --zone ru-central1-a \
  --create-boot-disk name=disk1,size=10,image-id=fd89j8iftfel2o29mb4i \
  --public-ip \
  --ssh-key ~/.ssh/appuser.pub
