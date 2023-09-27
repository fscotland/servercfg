# Quick script to setup a Ubuntu Docker Server

# Update OS
sudo apt update -y 
# Upgrade Softare
sudo apt upgrade -y
# Install HTOP for reviewing running processes, memory, ram
sudo apt install htop -y
# Install Cockpit for Web Access
sudo apt install cockpit -y
# Install Pre-Req's for Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
# Install Docker
sudo apt install docker-ce -y
# Add onyx to docker group
sudo usermod -aG docker onyx
# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Make file executable
sudo chmod +x /usr/local/bin/docker-compose
