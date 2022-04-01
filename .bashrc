: "${HOSTNAME:=$(hostname)}"
PS1='${HOSTNAME%%.*}:$PWD'
[ "$(id -u)" = "0" ] && PS1="${PS1}# "
[ "$(id -u)" = "0" ] || PS1="${PS1}\$ "

# use nicer PS1 for bash and busybox ash
[ -n "$BASH_VERSION" -o "$BB_ASH_VERSION" ] && PS1='\h:\w\$ '

# use nicer PS1 for zsh
[ -n "$ZSH_VERSION" ] && PS1='%m:%~%# '
