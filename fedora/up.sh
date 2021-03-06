#! /bin/bash

set -euo pipefail

sudo dnf -y upgrade 
sudo dnf -y install ansible git

ansible-playbook ansible/full.yml

# sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# sudo dnf -y groupupdate core
# sudo dnf -y --best --allowerasing install \
#      ffmpeg-libs \
#      vim-enhanced \
#      gnome-tweak-tool \

# # Install Mono
# sudo rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
# sudo sh -c "curl https://download.mono-project.com/repo/centos8-stable.repo | tee /etc/yum.repos.d/mono-centos8-stable.repo"
# sudo dnf -y update
# sudo dnf -y install mono-complete

# # Preparation for Emacs
# sudo dnf -y builddep emacs

# # installing docker
# # sudo dnf config-manager \
# #      --add-repo \
# #      https://download.docker.com/linux/fedora/docker-ce.repo
# # sudo dnf -y install docker-ce docker-ce-cli containerd.io
# # sudo usermod -aG docker $(whoami)
# # sudo systemctl start docker
# # sudo systemctl enable docker

# "common/common-configuration.sh"
