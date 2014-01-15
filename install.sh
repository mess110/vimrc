mkdir ~/vimrc/tmp

rm -rf ~/.vimrc
cp .vimrc ~
cp -R .vim ~

cp .conkyrc ~
chmod +x weather.py

git config --global user.name "Cristian Mircea Messel"
# git config --global user.email mess110@gmail.com
git config --global core.editor "vim"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global core.excludesfile ~/vimrc/.gitignore_global

chmod +x bin/*

sed '/^export PATH=~\/vimrc\/bin\:\$PATH/d' ~/.bashrc > ~/vimrc/tmp/file && mv ~/vimrc/tmp/file ~/.bashrc
echo 'export PATH=~/vimrc/bin:$PATH' >> ~/.bashrc
