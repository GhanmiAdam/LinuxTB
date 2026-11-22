echo "===================================="
echo "LINUX TOOL BOX"
echo "By Ghanmidev2012"
echo "===================================="
echo "1. Install apt package"
echo "2. Install pacman package"
echo "3. Install snap package comming soon on 1.1"
echo "4. Check version with fastfetch"

read -r -p "Choose an option [1-4]: " choice

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

case "$choice" in
    1)
        bash "$script_dir/aptpack.sh"
        ;;
    2)
        bash "$script_dir/pacmanpkg.sh"
        ;;
    3)
        read -r -p "Enter the snap package name: " package_name
        if [ -z "$package_name" ]; then
            echo "No package name provided"
        elif ! command -v snap >/dev/null 2>&1; then
            echo "Snap is not installed or is not available in PATH"
            exit 1
        else
            sudo snap install "$package_name"
        fi
        ;;
    4)
        bash "$script_dir/fastfetchpkg.sh"
        ;;
    *)
        echo "Invalid option: $choice"
        exit 1
        ;;
esac