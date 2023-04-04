#! /usr/bin/env sh

sudo dnf install dnf-plugins-core -y
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate core -y

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update

sudo dnf update

sudo dnf install -y tmux curl wget git neofetch htop gnome-tweaks trash-cli python3-pip tldr net-tools speedtest-cli neovim python3-neovim fd-find aria2 tree cowsay fzf npm ffmpeg youtube-dl mpv ripgrep unrar moreutils foliate util-linux-user zsh cronie git-delta wl-clipboard java-devel git-clang-format rust cargo go gtk-v4l ruby ruby-devel gcc-c++ collectd-sensors obs-studio dconf-editor sqlite shfmt v4l-utils google-noto-emoji-color-fonts cmake kdenlive glib2-static libgda libgda-sqlite bat libsqlite3x-devel yt-dlp ddcutil code foot celluloid fish easyeffects exa kitty

curl -fsSL https://deno.land/install.sh | sh

npm config set prefix ~/.npm/

npm install --global prettier
npm install --global tinypng-cli
npm install --global live-server
npm install --global yarn
npm install --global neovim
npm install --global typescript
npm install --global ijavascript
npm install --global pnpm

pip install --upgrade pylint
pip install --upgrade autopep8
pip install --upgrade pynvim
pip install --upgrade edir
python3 -m pip install --user libtmux==0.16.1

gem install neovim jekyll bundler
cargo install stylua

go install github.com/jesseduffield/lazygit@latest
go install github.com/jesseduffield/lazydocker@latest

ln -sf ~/repos/thuanowa/ok/.tinypng ~/.tinypng
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/ssh/config ~/.ssh/config

rm -rf ~/.config/nvim
mkdir ~/.config/nvim
ln -sf ~/dotfiles/init.lua ~/.config/nvim/

ln -sf ~/dotfiles/.tool-versions ~/
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore ~/.gitignore
ln -sf ~/dotfiles/git/gh_config.yml ~/.config/gh/config.yml
rm -rf ~/.config/lazygit
mkdir ~/.config/lazygit
ln -sf ~/dotfiles/git/lazygit_config.yml ~/.config/lazygit/config.yml
ln -sf ~/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/dotfiles/.ripgreprc ~/
rm -rf ~/.config/input-remapper/
ln -sf ~/dotfiles/input-remapper/ ~/.config/
ln -sf ~/repos/thuanowa/obs-studio/ ~/.config/
rm -rf ~/.config/foot
ln -sf ~/dotfiles/foot ~/.config/
ln -sf ~/dotfiles/fish ~/.config/
rm -rf ~/.config/kitty
ln -sf ~/dotfiles/kitty ~/.config/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$HOME/.tmux/plugins/tpm/bin/install_plugins

mkdir -p ~/repos/thuanowa/
cd ~/repos/thuanowa/
gh repo clone thuanowa/ok
ln -sf ~/repos/thuanowa/ok/.fonts ~/.fonts
cd ~/.fonts
fc-cache -rf
