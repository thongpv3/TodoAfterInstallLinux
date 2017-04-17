
#store current path
current=$(pwd)

#update && upgrade
sudo apt update && sudo apt upgrade

#install neccessary program
sudo apt install git maven cmake openjdk-8-jdk vlc tmux youtube-dl octave;
sudo apt install ubuntu-restricted-extras ibus-unikey;
sudo apt install vargrant docker lxc;
sudo apt install libboost-all-dev;
sudo apt install variety;

sudo apt install xsel; #used by notify trans
sudo mv files/notifytrans /usr/bin/notifytrans;
echo "Set customs key binding for notifytrans";
#config tmux
mv files/tmux.conf ~/.tmux.conf
mv files/gdbinit ~/.gdbinit

#config git
git config --global user.name "Pham Van Thong";
git config --global user.email "thongpv87@gmail.com";

#install atom
sudo apt install atom
apm install --packages-file files/packages-list.txt

#install clion & IntelliJ
cd /tmp;
wget https://data.services.jetbrains.com/products/download?code=CL&platform=linux clion.tar.gz
wget http://data.services.jetbrains.com/products/download?code=IIU&platform=linux idea.tar.gz
cd /opt;
tar -xzf /tmp/clion.tar.gz;
tar -xzf /tmp/idea.tar.gz;
echo "Clion and IntelliJ has been extracted into /opt, install it and remembered to install gitignore, markdown plugin, change font into FiraCode";

cd $path;
echo "Todo lists: " && cat program_to_install.txt;
