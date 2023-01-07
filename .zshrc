# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/ryan.wong/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="pure"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# .zshrc
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color green

prompt pure
alias gitprune="git branch -vv | grep ': gone]'|  grep -v '\*' | awk '{ print \$1; }' | xargs -r git branch -D"

aws-prof() {
    if [ -z "$1" ]; then
        echo ${AWS_PROFILE}
    else
        export AWS_PROFILE=$@
    fi
}
export AWS_ACCESS_KEY_ID="ASIAXLRQZESSJHS7EM4A"
export AWS_SECRET_ACCESS_KEY="qwD3pauIh/tcHZ6wxiOwqHmtxWtcyoGD4Cpp8VKg"
export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjENP//////////wEaCXVzLXdlc3QtMiJHMEUCIFahfvvxVFpNNDiy/dRARVi1iTpRvCW24BwUrP9Gow5IAiEA/bFhvo2XNSjSVKapXlS08OL8s0eRf6c2H2i5hdiy4vAqlAMISxACGgw1MDU4MzQ3MTAxODAiDPDqoX/2w9jvicSnXyrxApjBIihKnmNHYi1wlbE4bztYTtqO0MCM2aw9OBytxgV/Ah2whrjcSuqdnJcZlcAirBsabwJsLzd2D9IoLtJaQB6rTs/eUzgdxDghx9YUuCKXjs+8X1/M3n5MaRBuYShIyVBj9XYZ8NrNca0FfwEpe3pAUXWO3AgYtEwjkl2NprLHQ6SxvwDsNRTJ1SADeeOeokVMI6z49VPWQqu145AESMGZdAnGbBsIZ4xrS9FNbH3OwLLpO9vIOyY8uE4rCXPDt+6sv7IJ2fkslmNLjevmqcW46/FHCmWPbVm0l2EwuPBJnoOvzMNUyf0Bkq4WnfUYz8YnSLuWYexGUIoHqEIKgDAX64Kx8YzBN3OtTXupigT8uO8dXALOFD99OaNhdSYjmYy3HZTFwneVizUF1NZfI/ti/S5kq1eqdBNOiYkUAHOsL+KV8pnIxO1TPnEpPq9uJVF9JdVdZJp/UFnRvc7HDb0wMbIlniHulttqsAaWgjdsADD2iu2KBjqmAQyne/Q5JB2UK5NOMsSv1SK1wuxgIHzkZ/6sdRUg1Z7eVRYVASeZS9Ij4Hbmc8VxPph3E8xhTiIuE7ZAc+eyMBsbRcpa4dOxW5aLvzU7gwij3SK1kBI/eToQF6bKIiUgPY6cDfSqldLhUMFpDBKjBzn0xXsu3fCRmpSfb85LZHcs/tNckxaXbgCVcQTWcN4pdm8yx4qWMRAnLj9KxpcebqcZVZgS7sk="
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias gprune='git branch -D $(git branch | grep -Ev '\''^\s*(master|\*)'\'' | tr -d '\'' '\'' | fzf-tmux -m --preview '\''git log --pretty=oneline --color=always {}'\'')'
eval "$(rbenv init - zsh)"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools


export FASTLANE_SESSION='---\n- !ruby/object:HTTP::Cookie\n  name: myacinfo\n  value: DAWTKNV323952cf8084a204fb20ab2508441a07d02d33ed38e86a41f0cdafd21a5e4402007551e14b41a065537464e0ffeb552ef1cadb17c400cfbd143e6f8a186237de0773b35b1b4a6f878b20fb1b3e79229a6a9b4c91ea7d2579559866aa63b9c3307c6fda2407bf45049a11b24a9679b760eceaab99ffca10e1597679fd79de577cfd948ad95ab96b303e999dc0ada2dac4d096445db9a66da6eb2c60ed25f54ccaafea2c7fb380e889d94f9e888fdf2ae5fc3f5a3f7fa0592b8bb92a4894f01fe2394258f04dc214d975dec2f449ba8ba162411915fb672a3b94c752c6a4a1735058b73002a290de4652bdacd2326ea8138e56806c09a2a3c0f4c6708dddb1c8e86daf75e298b298ce3b0ca73aacfb6199e33e0bea6e57fee38fc7f755f36351d8279d943dad21ddc02338e90cdc2e844cc20c89d4c41c588558bba3473b2af1b577f1a4b43eeee1c767f69b7f75843dae472f35505e0ac61cd56e62fd4b5fcab9101bb9e2e4732b1b410a430f7857d3b737abbdc5cf783bb746f2ff02148e051a7040c34261e8f5944b409ae5332a147641171a7f726f92288f8f52313bc2b70c1844aa1e41567e2db4eb00ea961743cb73836d418d67ce4b04414471cb64308d2b44376a22cd4e6b9ec61a170307ad1128ce308b68f36fb98e2caea09fb4ce47ccae31a199400da498081f5243c9b86baf0dc9ab6dffb63520670954583f4d1e17eca4cac80ec25481d0bef301b578feaf6576576c07a7bb2c1b6edf86a293797e78c0fa07ffc281bee9d2d861408893c37026244098dcab257d01c0f9c12b14a8759b86cd882a1be85f6ece545a9426deb07585a47V3\n  domain: apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: \n  created_at: 2022-05-20 14:14:08.150569000 -07:00\n  accessed_at: 2022-05-20 14:14:08.168549000 -07:00\n- !ruby/object:HTTP::Cookie\n  name: DES50139eb23c6723cd571c1b1bc7709728c\n  value: HSARMTKNSRVXWFla2+cIoA80TH6D+1IZf1lSxvNgbmyShg/DbzIp86yiic+ZEv+LQ9EiIoUq2zmfJm3O4B4bAtihmezXBlOiAezuPcD5TzVusGtPL9ZrURekZQHmLlRF6Qx4hBdjuntqoNGIsFupKFQmsFN91AYmM3HYKbPqSiLDKd852FFBqZxdb1NBJ9CfSRVX\n  domain: idmsa.apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: 2592000\n  created_at: &1 2022-05-20 14:14:08.150430000 -07:00\n  accessed_at: *1\n- !ruby/object:HTTP::Cookie\n  name: dqsid\n  value: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NTMwODEyNDgsImp0aSI6Im40ODQtaFJVQTNaWnJta3BTSkUzcmcifQ.lps-Bir3xJsdJS4baYkPEGOR-NMxeQUvfDfBnwX4--w\n  domain: appstoreconnect.apple.com\n  for_domain: false\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: 1800\n  created_at: &2 2022-05-20 14:14:09.016643000 -07:00\n  accessed_at: *2\n'
