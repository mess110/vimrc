rm -rf ~/.vimrc
cp .vimrc ~
cp -R .vim ~

cp .conkyrc ~
chmod +x weather.py

git config --global user.name "Cristian Mircea Messel"
# git config --global user.email mess110@gmail.com
git config --global core.editor "vim"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

chmod +x bin/*

sudo ln -s ~/vimrc/bin/infinity /usr/local/bin/
sudo ln -s ~/vimrc/bin/auth-rails /usr/local/bin/
sudo ln -s ~/vimrc/bin/dotfiles-ruby /usr/local/bin/
