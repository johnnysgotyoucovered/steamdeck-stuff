#/bin/bash

echo "!! Issues? Errors? Please report them on [GitHub](https://github.com/johnnysgotyoucovered/steamdeck-stuff/issues)"

# Change to the user's home directory
cd ~

# Clone the repository or update it if it already exists
repo_dir="steamdeck-stuff"

if [ -d "$repo_dir" ]; then
    echo "Directory $repo_dir already exists, updating the repository..."
    cd "$repo_dir"
    git pull
    echo "Updated steamdeck-stuff."
    chmod +x "use_wine_env.sh"
else
    echo "Cloning the steamdeck-stuff repository into your home directory..."
    git clone https://github.com/johnnysgotyoucovered/steamdeck-stuff.git
    echo "Installed steamdeck-stuff."
    chmod +x "${repo_dir}/use_wine_env.sh"
fi
