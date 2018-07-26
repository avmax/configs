# install homebrew 
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#!bin/sh
set -x #echo on

source ~/configs/init/utils.sh

# install apps
LOCAL_ROOT=~/local_root
DOWNLOADS=~/Downloads
APPLICATIONS=/Applications
VOLUMES=/Volumes

# rm -rf $LOCAL_ROOT && mkdir -p $LOCAL_ROOT && cd $LOCAL_ROOT

# source ~/init/figma.sh
# source ~/init/spectacle.sh
# source ~/init/iterm.sh
# source ~/init/vscode.sh
# source ~/init/webstorm.sh
# source ~/init/skype.sh
# source ~/init/telegram.sh
# source ~/init/unarchiver.sh

# rm -rf $LOCAL_ROOT

# install git
brew install --force git
rm -rf ~/configs/git/.gitconfig && ln -s ~/configs/git/.gitconfig

# install node
# brew install --force node
# npm i -g yarn
# npm i -g vue-cli
# npm i -g n

# brew install --force mysql
# sudo mysqladmin -u root password '12345'

# install tmux
brew install --force tmux
rm -rf ~/.tmux.conf
ln -s ~/configs/.tmux/.tmux.conf

# install zsh
brew install --force zsh

rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf ~/.zsh
ln -s ~/configs/.zsh
rm -rf ~/.zshrc
ln -s ~/configs/.zsh/.zshrc


git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

zsh
chsh -s $(which zsh)
source ~/.zshrc
