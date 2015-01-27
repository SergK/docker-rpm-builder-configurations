#!/bin/bash
set -e
pushd epel-5-x86-64
docker build -t epel5dev .
popd

pushd epel-6-x86-64
docker build -t epel6dev .
popd

pushd epel-7-x86-64
docker build -t epel7dev .
popd

pushd fedora-20-x86-64
docker build -t fedora20dev .
popd

pushd fedora-21-x86-64
docker build -t fedora21dev .
popd

pushd fedora-rawhide-x86-64
docker build -t fedorarawhidedev .
popd
