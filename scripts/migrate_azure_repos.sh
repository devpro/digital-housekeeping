#!/bin/bash

originorganization=$1
originproject=$2
destinationorganization=$3
destinationproject=$4
reponame=$5
repoid=$6
tempdir=$7
basepath=`pwd`

az devops configure --defaults organization=https://dev.azure.com/$originorganization project=$originproject

az repos create --name $reponame --org https://dev.azure.com/$destinationorganization --project $destinationproject

mkdir -p $tempdir
cd $tempdir
git clone git@ssh.dev.azure.com:v3/$originorganization/$originproject/$reponame
cd $reponame

git branch -a
git checkout develop || true
git checkout master
git fetch --tags
git tag

git remote rm origin
git remote add origin git@ssh.dev.azure.com:v3/$destinationorganization/$destinationproject/$reponame
git push origin --all
git push --tags

cd $basepath

az repos delete --id "${repoid}" --org https://dev.azure.com/$originorganization --project $originproject --yes
