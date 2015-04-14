#!/bin/bash

# quick-n-dirty to auto install gitlab on Ubuntu.
# Based on the doco at https://about.gitlab.com/downloads/

DEBUG=echo

for pkg in openssh-server postfix
    do
    PKG=`dpkg -l | grep ${pkg} | awk '{print $2}'`
    if [[ "Z${PKG}" != "Z${pkg}" ]]
        then
        ${DEBUG} sudo apt-get install ${pkg}
    fi
done

#sudo apt-get install openssh-server
#sudo apt-get install postfix

${DEBUG} wget https://downloads-packages.s3.amazonaws.com/ubuntu-14.04/gitlab_7.9.2-omnibus-1_amd64.deb
${DEBUG} sudo dpkg -i gitlab_7.9.2-omnibus-1_amd64.deb

${DEBUG} sudo gitlab-ctl reconfigure

exit 0