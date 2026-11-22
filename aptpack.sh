echo "=================================="
echo "Apt paackage installer"
echo "==============================="

read -p  "Enter the apt package name" package_name
if [-z "$package_name"]; then
    sudo apt install $package_name
else
    echo "No package name provided"
fi