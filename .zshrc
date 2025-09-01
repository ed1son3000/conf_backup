# sudo apt install zsh
# 克隆oh my zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# sudo apt install neofetch
# sudo apt install fzf
# cd .oh-my-zsh/plugins
# zsh-autosuggestions: 提供命令自动补全。
# 安装命令: git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting: 提供命令语法高亮。
# 安装命令: git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# fzf-tab: 增强 Zsh 的 Tab 补全功能。
# 安装命令: git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
# zsh-256color
# 切换默认 Shell 为 Zsh
# chsh -s /bin/zsh

ZSH=~/.oh-my-zsh/
ZSH_THEME="dst"

#  plugins
plugins=(
    git
    sudo
    zsh-256color
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf-tab
)

source $ZSH/oh-my-zsh.sh  #  path to zsh
# source /usr/share/fzf/completion.zsh  #  fzf plugins
source ~/.oh-my-zsh/plugins/fzf-tab/fzf-tab.plugin.zsh #  fzf-tab
source ~/.oh-my-zsh/plugins/fzf-tab/fzf-tab.zsh

export FZF_DEFAULT_OPTS="--color=fg:-1,bg:-1,hl:3,fg+:0,bg+:48,hl+:1,info:6,prompt:3,pointer:5"
export FZF_PREVIEW_OPTS="--border --color=bg+:48,bg:-1,hl:3,fg:7"

#  fzf
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh 


#  neofetch
neofetch


#  alias
alias fzf="fzf --preview 'bat --color=always {}'"
alias top="btop"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/edison/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/edison/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/edison/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/edison/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
