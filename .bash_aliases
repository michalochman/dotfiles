# Enable aliases to be sudo’ed
alias sudo='sudo '

# Easy directory navigation
alias cdd='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# File listings helpers
alias l='ls -lh'
alias ll='ls -lha'
alias lsd='ls -lh | grep "^d"'

# Shortcuts
alias c=clear
alias sv='sudo vim'
alias v=vim
alias apache='sudo apachectl -k'

# Enhance grep
alias grep='grep --color=auto'
alias egrep='grep -e --color=auto'

# Postgres management
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgstatus='pg_ctl -D /usr/local/var/postgres status'

# Enhance rsync with progress
alias rsyncp='rsync -avr --progress'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Remove *.pyc files
alias rmpyc='find . -iname \*.pyc -exec rm {} \;'

# Django management and testing
alias dm='python -W ignore::DeprecationWarning manage.py'
#alias dms='python -W ignore::DeprecationWarning manage.py shell'
alias dms='PYTHONSTARTUP=dms_class_loader.py python -W ignore::DeprecationWarning manage.py shell'
alias dmsql='PYTHONSTARTUP=dms_class_loader.py python -W ignore::DeprecationWarning manage.py debugsqlshell'
alias dt='python -W ignore::DeprecationWarning manage.py test'
alias dtn='python -W ignore::DeprecationWarning manage.py test --with-nose'
alias dtc='python -W ignore::DeprecationWarning manage.py test_coverage'
alias dti='PYTHONPATH="$PWD" instrumental -rst `basename "$PWD"` manage.py test --settings=`basename "$PWD"`.settings'
alias dtci='PYTHONPATH="$PWD" instrumental -rst `basename "$PWD"` manage.py test_coverage --settings=`basename "$PWD"`.settings'
function dmsi {
    find $1 -name migrations -prune -a -not -type d -o -name tests -prune -a -not -type d -o -iname \*.py | grep -v .features. | grep -v .lettuce. | sed 's/^/from /g;s/\//./g;s/\.py/ import */g'
}

# View man pages in Preview
function manview {
    man -t $1 | open -f -a /Applications/Preview.app
}

# Extract different archives
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
