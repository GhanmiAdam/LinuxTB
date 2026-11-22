echo "=================================="
echo "Pacman package installer for arch linux"
echo "==============================="

read -p "Enter the pacman package name" package_name
if[-z "$package_name"]; then
    sudo pacman -s install $package_name
else
    echo "No package name provided"
fi