# Environment variables
export GOPATH=/Users/renatoargh/go
export GOROOT=/usr/local/go
export NODE_ENV=development
export PATH=$PATH:/usr/local/mysql/bin

# Development alias
alias ht="cd /Users/renatoargh/Google Drive/horario-de-trabalho"
alias javacc="java -cp javacc-6.1.2.jar javacc"
alias server="clear && echo \"IP: \$(ip)\" && python -m SimpleHTTPServer \$(portdiscovery)"
alias run="clear && grunt build && NODE_ENV=development node app"
function build {
    if [ "$1" == "" ] 
    then
        grunt build
    else
        grunt build-$1
    fi
}

alias test="npm test"
alias lines="git ls-files | xargs cat | wc -l | tr -d \" \""
alias liness="git ls-files | xargs wc -l"
alias cwd="echo \$(pwd) | tr -d \"\\n\" | pbcopy; echo \"Copied \$(pwd)\""
alias llg="ll | grep"
alias contrib="../contributor/src/bin/contributor"
alias gc="git add -A && git commit  && git push"
alias gitreset="git reset --hard"
alias pid="ps -ef | grep"
alias pack="cat package.json"
alias deps="cat package.json | underscore select '.dependencies:only-child' --outfmt text | underscore print --color"
alias ddeps='cat package.json | underscore select '\''.devDependencies:only-child'\'' --outfmt text | underscore print --color'
alias publish="npm publish"
function up {
    npm remove --save "$1";
    npm install --save "$1";
}
function packs {
    #lists how many packages a given user has in npm registry
    npm-me $1 | echo `expr $(wc -l) - 4`
}
alias ws="cd /Users/renatoargh/Github"
alias flog="clear && git ls-files | xargs grep -c console.log | grep ':[1-9]$'" #finds ocurrences of console.log in current git project
function mkpw() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-8}; }

function npmim() { /usr/bin/open -a "/Applications/Google Chrome.app" "http://npm.im/$1"; }

# OS alias
alias ll="ls -l -a"
alias cd..="cd .."
alias sshprv="ssh -i /Users/renatoargh/Dropbox/servidor1.pem ec2-user@54.232.84.150"
alias sshvale="ssh -i /Users/renatoargh/Google\ Drive/Amazon\ AWS/gammasoft.pem ec2-user@54.207.60.100"

#recursive listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

#mkdir and cd into that dir
function mcd() {
  mkdir -p "$1" && cd "$1";
}

#which commands you use most
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# Utilities alias
alias ip="ifconfig en0 | grep 'inet ' | awk '{print \$2}' | cut -d/ -f1"
alias bashprofile="vim ~/.bash_profile && source ~/.bash_profile"
