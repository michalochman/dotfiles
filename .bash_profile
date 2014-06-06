export PATH=/usr/local/Cellar/python/2.7.5/bin:/usr/local/Cellar/gems/1.8/bin:/usr/local/bin:$PATH
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="$HOME/Projects/.git-extensions/bin:$PATH"
#export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH
# --- or sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib

# needed for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export GEM_HOME=/usr/local/Cellar/gems/1.8

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
export TERM='xterm-256color'

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Bash aliases
source ~/.bash_aliases

# Parse repositories info
parse_git_branch () {
    git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# (git::\1)#'
}
parse_svn_branch() {
    if [ $(parse_svn_path) ]; then
        echo -n " (svn::$(parse_svn_revision):$(parse_svn_path))"
    fi
}
parse_svn_path() {
    parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g'
}
parse_svn_url() {
    svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
    svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}
parse_svn_revision() {
    svn info 2>/dev/null | sed -ne 's#^Revision: ##p'
}

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
    && type -P dircolors >/dev/null \
    && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
    # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
    if type -P dircolors >/dev/null ; then
        if [[ -f ~/.dir_colors ]] ; then
            eval $(dircolors -b ~/.dir_colors)
        elif [[ -f /etc/DIR_COLORS ]] ; then
            eval $(dircolors -b /etc/DIR_COLORS)
        fi
    fi

    if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]\[\033[0;31m\]\$(parse_git_branch)\$(parse_svn_branch)\[\033[00m\] "
    fi

else
    if [[ ${EUID} == 0 ]] ; then
        # show root@ when we don't have colors
        PS1='\u@\h \W \$ '
    else
        PS1='\u@\h \w \$ '
    fi
fi

# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs
