# 
# Demo Container Image 
# 

set -eo 

dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
dnf -y distro-sync
dnf -y install git vim which wget
dnf -y module install nodejs:20

npm install --global yarn


