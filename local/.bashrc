# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#设置字符集
export LC_ALL=en_US.utf8

#加载bash_completion sudo yum install git bash-completion
. /etc/bash_completion

#设置git分支
function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\(\1\)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch_and_add_brackets)\[\033[00m\]\$ '

#别名
alias g='grep -rin --color'
alias grep='grep --color'

# Main entry for cdthis.
# cdthis is opensource software. Copyleft!2014,Pandaoknight,GNU_GPL. Partially right reserved, accroding to GNU GPL.
if [ -f ~/.bash_cdthis ]; then
    . ~/.bash_cdthis
fi
alias cdthis='. /home/work/local/cdthis/cdthis /home/work/local/cdthis'

#gerrit推送
#git push origin HEAD:refs/for/master%r=suchong@lianjia.com,r=yanxingmao@lianjia.com,guoxiaoming@lianjia.com,zuoerdong@lianjia.com

#进入目录中执行此命令, 执行命令后，exit退出
alias swagger_start='nohup node /home/work/swagger-editor/node_modules/.bin/http-server -i -a 0.0.0.0 -p 3001 &'
