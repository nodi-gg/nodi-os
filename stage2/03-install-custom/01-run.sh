#!/bin/bash -e

# Install Docker
echo "Installing Docker..."
echo
on_chroot << EOF
curl -fsSL https://get.docker.com | sh
usermod -a -G docker $FIRST_USER_NAME
EOF

# Install Docker Compose with pip3
echo "Installing Docker Compose..."
echo
on_chroot << EOF
pip3 install docker-compose
EOF