#/bin/bash
# Install Nerd Font --> You can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "Get font names from https://github.com/ryanoasis/nerd-fonts/releases and navigate to assets for the file name or version"
read -p "Enter Nerd-Font Name: " fontName

read -p "Enter version[default v2.1.0]: " version
version=${version:-v2.1.0}

fontUrl=https://github.com/ryanoasis/nerd-fonts/releases/download/$version/$fontName.zip
echo "Downloading " $fontUrl
wget $fontUrl
unzip $fontName.zip -d ~/.local/share/nerd-fonts/
# fc-cache -fv
echo "done!"
