#!/usr/bin/env bash

#Script Git Cloning with My-Devops repo from remote server automatically
echo "Step1:  Starting prechecks before cloning git repo"
echo "========================================================="
echo "Step2:  Checking Git installed or not.. Please wait..."
echo "========================================================="

git_v=`git --version|awk '{print $1}'`
git_usr='kishvard'
git_mail='kishmobi@gmail.com'

if [[ $git_v != 'git' ]]; then
  echo "Please install git using "yum install git -y""
else
echo "installed git and procceding to check directory"
fi
echo "========================================================="
echo "Step3:   Checking directory apps exist or not"
echo "========================================================="
if [[ -d /apps ]]; then
  echo "apps directory exist... Moving to apps directory"
  cd /apps
  
  echo "========================================================="
  echo "Step4: Adding user name and Mail to git"
  git config --global user.name $git_usr
  git config --global user.email $git_mail
  git config --list >> /tmp/git_config.txt
  git clone https://github.com/kishvard/My-DEV-ops.git  
  
  if [[ -d /apps/My-DEV-ops ]]; then
  echo "========================================================="
  echo "Step3: Post checks completed and cloning done successfully!!!"
  fi
fi  

