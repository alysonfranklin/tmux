# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/alyson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gnzh"
ZSH_THEME="agnoster"
#ZSH_THEME="jnrowe"

plugins=(zsh-autosuggestions)
plugins=(rbenv)

unsetopt nomatch

export EDITOR=vim

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  rbenv
  aws
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Configura minha chave id_rsa para o bitbucket bemobi 
ssh-bemobi() { eval "$(ssh-agent -s) ; ssh-add ~/.ssh/id_rsa" ; eval ssh-agent ; ssh-add ~/.ssh/id_rsa}

# Atalho para acessar a vmware vSphere
vmware() { rdesktop-vrdp -g 1920x1024 -u alyson.pires -N 10.5.9.10 & }

# Configura minha chave alyson.private para o bitbucket pessoal 
ssh-alyson() { eval "$(ssh-agent -s) ; ssh-add ~/.ssh/franklin" ; eval ssh-agent ; ssh-add ~/.ssh/franklin }
#git push origin master --force

# Loga na aws, basta colocar awsgo IP
awsgo() { /usr/bin/ssh -i $HOME/.ssh/alyson.pires.pem alysonpires@"$@";}

goaws() { /usr/bin/ssh -i $HOME/.ssh/nginx.pem ubuntu@"$@";}
#goaws() { /usr/bin/ssh -i $HOME/.ssh/nginx.pem ec2-user@"$@";}

awspull() { scp -i $HOME/.ssh/alyson.pires.pem -vr alysonpires@"$@":"$1" }

# Loga em maquinas da alog, basta colocar alog final do IP, ex alog 177
alog() { /usr/bin/ssh alyson.pires@10.5.9."$@";}

#loga na sua maquina na bemobi (:
bemobi() { /usr/bin/ssh alyson@10.0.0.36;}

# Roda um script para configurar sua vpn (Arquivo no final do email)
vpn() { sudo /bin/sh /home/alyson/vpc/vpc.sh;}

#Configura um tunnel, da sua maquina com uma maquina na bemobi
#Troque pelo seu usuario
setproxy() { /usr/bin/ssh -D 8123 -f -C -q -N alyson@10.0.0.36;}

#Lista todas as maquinas na rede, muito bom para explorar a rede onde você estiver, por exemplo, você pode encontrar seu telefone ou outro pc conectado na rede.
netlist () { sudo /usr/bin/arp-scan -localnet;}
jupyter-notebook() { /home/alyson/anaconda3/bin/jupyter-notebook;}

#Habilitando a inicialização do Tmux no terminal
#if [ `which tmux 2> /dev/null` -a -z "$TMUX" ]; then
#    tmux -2 attach || tmux -2 new; exit
#fi

echo -e "\033[01;31m===================================================================="
echo -e "| \033[01;32mInfrastructure Analyst\033[01;31m        \033[01;32mCREATED  BY:\033[01;31m                       |"
echo "|                      ________                                    |"
echo "|                    .-.      .-.                                  |"
echo "|                   /            \                                 |"
echo -e "|                  |   \033[01;32mFranklin\033[01;31m   |                                |"
echo "|                  |,  .-.  .-.  ,|                                |"
echo "|                  | )(|_/  \|_)( |                                |"
echo "|                  |/     /\     \|                                |"
echo "|          _       (_     ^^     _)                                |"
echo "|  _\ ____) \_______\__|\$\$\$\$\$\$|__/________________________________ |"
echo "| (_)[___]{}<________|-\\$\$\$\$\$\$/-|___AlysonFranklinReal@gmail.com__/|"
echo "|   /     )_/        \          /                                  |"
echo "|                     \ ______ /                                   |"
echo -e "====================================================================\033[01;37m"
echo
echo "- Ensine o que você sabe, porque a melhor forma de aprender é ensinando;"
echo "- Pratique o que você ensina;"
echo "- Gere resultados com aquilo que você ensina;"
echo "- Não renegue aquilo que você desconhece;"
echo "- Aprenda com todo mundo que o cerca;"
echo "- Tão importante quanto aprender, é colocar em pratica o que você aprendeu;"
echo "- Ego é como se fosse remédio: na dose certa ele te salva, na super dosagem ele te mata;"
echo "- Seja evolução constante;"
