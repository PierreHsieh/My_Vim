# Vim 8.0 安裝

1 使用VMware 安裝 Ubuntu-16.04.3
2 確定 VMware 網路有開啟
3 修改 Ubuntu
ifconfig -a 查詢網路介面 ens37
netstat -nr 查詢網路狀態
sudo nano /etc/network/interfaces
增加
-----------------------
auto ens37
iface ens37 inet dhcp
-----------------------
sync
sudo reboot

4 相關安裝需要使用 ubuntu iso 檔案
sudo mount /dev/sr0 /media/cdrom

5 更新 apt-get
sudo apt-get update

6 安裝 ssh 使用終端機操作
sudo apt-get install openssh-server
以下兩個檔案可以修改 SSH Port
sudo nano /etc/ssh/sshd_config
sudo nano /etc/services

7 移除舊版 vim
sudo apt-get remove vim vim-runtime gvim
sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox

8 安裝依賴檔案
git
sudo apt-get install git

cmake
sudo apt-get install build-essential cmake

checkinstall
sudo apt-get install checkinstall

curl
sudo apt-get install curl

clang
sudo apt-get install clang

Ag依賴 Silver Searcher
sudo apt-get install silversearcher-ag

tarbar依賴
sudo apt-get install exuberant-ctags

cscope
sudo apt-get install cscope

相關依賴文件
sudo apt-get install libncurses5-dev libncursesw5-dev

sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git

9 安裝vim
下載vim
cd ~
git clone https://github.com/vim/vim.git
cd vim
git submodule update --init --recursive

設定並且編譯
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
--enable-pythoninterp=yes \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-gui=gtk2 \
--enable-cscope \
--prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim80
sudo make install

10 下載vim差件管理
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

11 更新 .vimrc & vim_& config plus_config

12 更新 vim plug
vim +PluginInstall +qall

13 終端機使用 CONSOLA-Powerline.ttf 字體
[Consolas Font in Vim Powerline]
( http://codejury.com/consolas-font-in-vim-powerline-windows/ )

14 下載相關 man 檔案
libstdc++-api.20140403.man.tar.bz2
ftp://gcc.gnu.org/pub/gcc/libstdc++/doxygen/
man-pages-4.13.tar.gz
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

15 安裝 man
tar jxvf libstdc++-api.20140403.man.tar.bz2
tar zxvf man-pages-4.13.tar.gz
sudo cp -rf libstdc++-api.20140403.man/* /usr/share/man/
sudo cp -rf man-pages-4.13/* /usr/share/man/

可以在 vim 運行測試
:Man fork
:Man std::vector

16 建立 ctags
ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q -R -f ~/.vim/systags.out /usr/include /usr/local/include

17 Coding Style
cpplint.py
https://github.com/google/styleguide

pycodestyle.py
https://github.com/PyCQA/pycodestyle

18 vim help
http://vimcdoc.sf.net (English)
http://vcd.gro.clinux.org （中文）


