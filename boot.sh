# deploy config files
cp .* $HOME
mkdir -p $HOME/.config/nvim && cp init.vim $_

cd $HOME
#install zsh
sudo apt install zsh
#oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
#zsh-syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#auto-suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestionr

#pure-prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

#fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# z
sudo sh -c 'curl https://raw.githubusercontent.com/rupa/z/master/z.sh > /usr/local/bin/z.sh'

# ripgrep
sudo apt install ripgrep

sudo sh -c 'curl https://raw.githubusercontent.com/trapd00r/LS_COLORS/master/lscolors.sh > $HOME/.local/share/lscolors.sh'
