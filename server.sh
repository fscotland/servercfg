echo "Updating and Upgrading Operating System and Software"
sudo apt update -y && sudo apt upgrade -y
echo "Installing Networking Tools"
sudo apt install net-tools -y
echo "Installing htop"
sudo apt install htop -y
echo "Installing Cockpit"
sudo apt install cockpit -y
