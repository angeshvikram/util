#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases.
#                Much of this was originally copied from:
#                http://natelandau.com/my-mac-osx-bash_profile/
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="\w @ \h(\u): "

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
    export JAVA_HOME=$(/usr/libexec/java_home)

#   Set Default Editor (change 'Vim' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/vim

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=ExFxBxDxCxegedabagacad
# source "`brew --prefix grc`/etc/grc.bashrc"

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias ls='ls -Gp'			    # Preferred ‘ls’ implementation
alias cfl='cf login -a https://api.system.aws-usw02-pr.ice.predix.io -u vikram.angesh@ge.com -p Welcome@12w --skip-ssl-validation -sso'
# Preferred ‘ls’ implementation
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
# alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
# alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
# alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

alias wso_dr='cd /Users/212441284/Desktop/PREDIX/wso2is-4.5.0/bin'            # to WSO directory
alias run_wso='sh bin/wso2server.sh'

alias play_dr='cd /Users/212441284/WebstormProjects/IPMS/trunk/ipm'
alias play_run='../../../../Desktop/PREDIX/Play/play-2.2.1-ge/play clean run'

alias k_dr='cd /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/bin'
alias dsp_run='./dsp clean debug'

wso_ips() { cd /Users/212441284/Desktop/PREDIX/wso2is-4.5.0/bin;sh wso2server.sh; }

play_ips () { cd /Users/212441284/WebstormProjects/IPMS/trunk/ipm;../../../../Desktop/PREDIX/Play/play-2.2.1-ge/play clean run; }

dsp() { cd /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/bin;./dsp clean debug; }

dep_ips() {
 rm -rf /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-common-service-1.0.0.jar;
 rm -rf /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-ds-service-1.0.0.jar;
 rm -rf /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-etl-service-1.0.0.jar;
 rm -rf /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-sw-service-1.0.0.jar;
 cp /Users/212441284/.m2/repository/com/ge/og/ipm/services/ipm-common-service/1.0.0/ipm-common-service-1.0.0.jar /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-common-service-1.0.0.jar;
 cp /Users/212441284/.m2/repository/com/ge/og/ipm/services/ipm-ds-service/1.0.0/ipm-ds-service-1.0.0.jar /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-ds-service-1.0.0.jar;
 cp /Users/212441284/.m2/repository/com/ge/og/ipm/services/ipm-etl-service/1.0.0/ipm-etl-service-1.0.0.jar /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-etl-service-1.0.0.jar;
 cp /Users/212441284/.m2/repository/com/ge/og/ipm/services/ipm-sw-service/1.0.0/ipm-sw-service-1.0.0.jar /Users/212441284/Desktop/PREDIX/predix-14-1/predix-core-14.1.65/kernel/dsp/lib/ipm/ipm-sw-service-1.0.0.jar;
 }


alias x="mvn clean install -s ~/mvn_settings.xml"
alias xx='mvn clean install -s ~/mvn_settings.xml -DskipTests'

alias z="export LOGBACK_DEBUGLEVEL=ERROR;java -jar ./aoi-services/aoi-api/target/api-1.1.0-SNAPSHOT.jar"
alias y="export LOGBACK_DEBUGLEVEL=ERROR;java -jar ./target/admin-1.1.0-SNAPSHOT.jar "
alias d="export LOGBACK_DEBUGLEVEL=ERROR;java -jar -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5151,suspend=n ./target/admin-1.1.0-SNAPSHOT.jar "
alias cf1='cf login -a https://api.grc-apps.svc.ice.ge.com -u vikram.angesh@ge.com -p chang3m31 -o pitney-bowes -s dev'
alias fz="find . -name *.jar"
alias vp="vi ~/.bash_profile"
alias vs=". ~/.bash_profile"

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }


#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<"    EOT"
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
        EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
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


#   ---------------------------
#   4.  SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
    spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


#   ---------------------------
#   5.  PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
    my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }


#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
    alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#    screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
    alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#   ---------------------------------------
#   8.  WEB DEVELOPMENT
#   ---------------------------------------

# alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
# alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
# alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
    httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#   ---------------------------------------
#   9.  REMINDERS & NOTES
#   ---------------------------------------

#   remove_disk: spin down unneeded disk
#   ---------------------------------------
#   diskutil eject /dev/disk1s3

#   to change the password on an encrypted disk image:
#   ---------------------------------------
#   hdiutil chpass /path/to/the/diskimage

#   to mount a read-only disk image as read-write:
#   ---------------------------------------
#   hdiutil attach example.dmg -shadow /tmp/example.shadow -noverify

#   mounting a removable drive (of type msdos or hfs)
#   ---------------------------------------
#   mkdir /Volumes/Foo
#   ls /dev/disk*   to find out the device to use in the mount command)
#   mount -t msdos /dev/disk1s1 /Volumes/Foo
#   mount -t hfs /dev/disk1s1 /Volumes/Foo

#   to create a file of a given size: /usr/sbin/mkfile or /usr/bin/hdiutil
#   ---------------------------------------
#   e.g.: mkfile 10m 10MB.dat
#   e.g.: hdiutil create -size 10m 10MB.dmg
#   the above create files that are almost all zeros - if random bytes are desired
#   then use: ~/Dev/Perl/randBytes 1048576 > 10MB.dat



#export HTTP_PROXY="http://proxy-src.research.ge.com:8080"
#export HTTPS_PROXY=$HTTP_PROXY
#export http_proxy=$HTTP_PROXY
#export https_proxy=$HTTP_PROXY

export HTTP_PROXY="http://grc-americas-sanra-pitc-wkcz.proxy.corporate.gtm.ge.com:80"
export HTTPS_PROXY=$HTTP_PROXY
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTP_PROXY
export ALL_PROXY=$HTTP_PROXY

#export no_proxy="github.sw.ge.com, openge.ge.com"

export no_proxy="devcloud.swcoe.ge.com,localhost,127.0.0.1,ge.com,sequoia.ge.com,*.ge.com,github.build.ge.com,sjc1intproxy01.crd.ge.com,proxy-src.research.ge.com"
export HTTPS_PROXY=$no_proxy

#export http_proxy="http://sjc1intproxy01.crd.ge.com:8080"
#export https_proxy="http://sjc1intproxy01.crd.ge.com:8080"



alias mvn='/Users/212441284/Downloads/apache-maven-3.2.3/bin/mvn'

LD_LIBRARY_PATH=/Library/PostgreSQL/9.6/lib/
export LD_LIBRARY_PATH
PATH=/Library/PostgreSQL/9.6/bin:$PATH
export PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
