#/bin/bash
# Install Nerd Font --> You can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
read -p "Enter Nerd-Font Name: " fontName

read -p "Enter version[default v2.1.0]: " version
version=${version:-v2.1.0}

fontUrl=https://github.com/ryanoasis/nerd-fonts/releases/download/$version/$fontName.zip
echo "Downloading " $fontUrl
wget $fontUrl
unzip $fontName.zip -d ~/.local/share/nerd-fonts/
# fc-cache -fv
echo "done!"
