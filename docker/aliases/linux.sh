func-axiom-backup () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-backup $ARGS"
    set +f
}
alias axiom-backup="set -f; func-axiom-backup"

func-axiom-boxes () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-boxes $ARGS"
    set +f
}
alias axiom-boxes="set -f; func-axiom-boxes"

func-axiom-budget () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-budget $ARGS"
    set +f
}
alias axiom-budget="set -f; func-axiom-budget"

func-axiom-build () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-build $ARGS"
    set +f
}
alias axiom-build="set -f; func-axiom-build"

func-axiom-configure () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    mkdir -p $HOME/.axiom-root &>/dev/null
    if [ -d $HOME/.axiom-root/.axiom ]
    then
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-configure $ARGS"
    else 
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/axiom-configure $ARGS"
    fi
    set +f
}
alias axiom-configure="set -f; func-axiom-configure"

func-axiom-connect () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-connect $ARGS"
    set +f
}
alias axiom-connect="set -f; func-axiom-connect"

func-axiom-deploy () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-deploy $ARGS"
    set +f;
}
alias axiom-deploy="set -f; func-axiom-deploy"

func-axiom-dns () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-dns $ARGS"
    set +f;
}
alias axiom-dns="set -f; func-axiom-dns"

# TODO - Implementation of axiom-docker via docker... 
func-axiom-docker () {
    echo "Docker remote support via docker not currently supported"
    #docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-docker "$@"
    set +f;
}
alias axiom-docker="set -f; func-axiom-docker"

func-axiom-exec () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-exec $ARGS"
    set +f;
}
alias axiom-exec="set -f; func-axiom-exec"

func-axiom-execb () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-execb $ARGS"
    set +f;
}
alias axiom-execb="set -f; func-axiom-execb"

func-axiom-fleet () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-fleet $ARGS"
    set +f;
}
alias axiom-fleet="set -f; func-axiom-fleet"

func-axiom-init () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-init $ARGS"
    set +f
}
alias axiom-init="set -f; func-axiom-init"

func-axiom-ls () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "set -f;/root/.axiom/interact/axiom-ls $ARGS"
    set +f
}
alias axiom-ls="set -f; func-axiom-ls"

# TODO - Check if we can get this working on dockerized MacOS/Linux installs. 
#      - Will want to discuss about proxychains vs simple socks proxy cost/benefit
func-axiom-proxy () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    echo "Support for proxy via axiom is not supported in Dockerized mode"
    # docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-proxy "$@"
    set +f
}
alias axiom-proxy="set -f; func-axiom-proxy"

func-axiom-prune () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-prune $ARGS"
    set +f;
}
alias axiom-prune="set -f; func-axiom-prune"

func-axiom-region () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-region $ARGS"
    set +f;
}
alias axiom-region="set -f; func-axiom-region"

func-axiom-restore () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-restore $ARGS"
    set +f;
}
alias axiom-restore="set -f; func-axiom-restore"

func-axiom-rm () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-rm $ARGS"
    set +f
}
alias axiom-rm="set -f; func-axiom-rm"

# TODO - axiom-scan
func-axiom-scan () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run --name axiom-scan -it --rm -v $PWD:/tmp -v $HOME/.axiom-root:/root sy14r/axiom "cd /tmp; /root/.axiom/interact/axiom-scan $ARGS"
    set +f
}
alias axiom-scan="set -f; func-axiom-scan"

# TODO - axiom-scp
func-axiom-scp () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run --name axiom-scp -it --rm -v $PWD:/tmp -v $HOME/.axiom-root:/root sy14r/axiom "cd /tmp; /root/.axiom/interact/axiom-scp $ARGS"
    set +f;
}
alias axiom-scp="set -f; func-axiom-scp"

func-axiom-select () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-select $ARGS"
    set +f;
}
alias axiom-select="set -f; func-axiom-select"

func-axiom-ssh () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-ssh $ARGS"
    set +f;
}
alias axiom-ssh="set -f; func-axiom-ssh"

func-axiom-update () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker pull sy14r/axiom
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-update $ARGS"
    set +f;
}
alias axiom-update="set -f; func-axiom-update"

func-axiom-vpn () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    OPENVPN_PATH=$(docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "cat /root/.axiom/axiom.json | jq  .openvpn_path 2>/dev/null ")
    OPENVPN_PATH=$(echo $OPENVPN_PATH | cut -d '"' -f2)
    if [ ! -x "$OPENVPN_PATH" ]
    then
        echo "Could not find saved openvpn path."
        echo "Please enter the full path to where you have openvpn installed"
        echo ""
        read OPENVPN_PATH
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "cat ~/.axiom/axiom.json | jq --arg key openvpn_path --arg val \"$OPENVPN_PATH\" '.[\$key] = \$val' > /tmp/axiom.json; mv /tmp/axiom.json ~/.axiom/axiom.json"
    fi
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-vpn $ARGS --download"
    set +f;  
    sudo $OPENVPN_PATH $HOME/.axiom-root/.axiom/current-config.ovpn  
    rm -f $HOME/.axiom-root/.axiom/current-config.ovpn
}
alias axiom-vpn='set -f; func-axiom-vpn'

func-axiom-wait () {
    ARGS=$(echo $@ | sed 's/ \*/\ \\\*/g')
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom "/root/.axiom/interact/axiom-wait $ARGS"
    set +f;
}
alias axiom-wait="set -f; func-axiom-wait"

func-axiom-cli () {
    docker run -it --rm -v $PWD:/tmp -v $HOME/.axiom-root:/root sy14r/axiom "cd /tmp; bash"
    set +f;
}
alias axiom-cli="set -f; func-axiom-cli"
