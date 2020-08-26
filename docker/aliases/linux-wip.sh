func-axiom-backup () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-backup "$@"
    set +f
}
alias axiom-backup="set -f; func-axiom-backup"

func-axiom-boxes () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-boxes "$@"
    set +f
}
alias axiom-boxes="set -f; func-axiom-boxes"

func-axiom-budget () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-budget "$@"
    set +f
}
alias axiom-budget="set -f; func-axiom-budget"

func-axiom-build () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-build "$@"
    set +f
}
alias axiom-build="set -f; func-axiom-build"

func-axiom-configure () {
    mkdir -p $HOME/.axiom-root &>/dev/null
    if [ -d $HOME/.axiom-root/.axiom ]
    then
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-configure "$@"
    else 
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /axiom-configure "$@"
    fi
    set +f
}
alias axiom-configure="set -f; func-axiom-configure"

func-axiom-connect () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-connect "$@"
    set +f
}
alias axiom-connect="set -f; func-axiom-connect"

func-axiom-deploy () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-deploy "$@"
    set +f;
}
alias axiom-deploy="set -f; func-axiom-deploy"

func-axiom-dns () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-dns "$@"
    set +f;
}
alias axiom-dns="set -f; func-axiom-dns"

# TODO - Implementation of axiom-docker via docker...
func-axiom-docker () {
    echo "Support for remote docker host via axiom is not supported in Dockerized mode"
    set +f;
}
alias axiom-docker="set -f; func-axiom-docker"

func-axiom-exec () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-exec "$@"
    set +f;
}
alias axiom-exec="set -f; func-axiom-exec"

func-axiom-execb () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-execb "$@"
    set +f;
}
alias axiom-execb="set -f; func-axiom-execb"

func-axiom-fleet () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-fleet "$@"
    set +f;
}
alias axiom-fleet="set -f; func-axiom-flet"

func-axiom-init () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-init "$@"
    set +f
}
alias axiom-init="set -f; func-axiom-init"

func-axiom-ls () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-ls "$@"
    set +f
}
alias axiom-ls="set -f; func-axiom-ls"

# TODO - Check if we can get this working on dockerized MacOS/Linux installs
func-axiom-proxy () {
    echo "Support for proxy via axiom is not supported in Dockerized mode"
    set +f
}
alias axiom-proxy="set -f; func-axiom-proxy"

func-axiom-prune () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-prune "$@"
    set +f;
}
alias axiom-prune="set -f; func-axiom-prune"

func-axiom-region () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-region "$@"
    set +f;
}
alias axiom-region="set -f; func-axiom-region"

func-axiom-restore () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-restore "$@"
    set +f;
}
alias axiom-restore="set -f; func-axiom-restore"

func-axiom-rm () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-rm "$@"
    set +f
}
alias axiom-rm="set -f; func-axiom-rm"

# TODO - axiom-scan

# TODO - axiom-scp

func-axiom-select () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-select "$@"
    set +f;
}
alias axiom-select="set -f; func-axiom-select"

func-axiom-ssh () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-ssh "$@"
    set +f;
}
alias axiom-ssh="set -f; func-axiom-ssh"

func-axiom-update () {
    docker pull sy14r/axiom
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-update "$@"
    set +f;
}
alias axiom-update="set -f; func-axiom-update"

# TODO - axiom-vpn
func-axiom-vpn () {
    # $prof = (Get-Content $HOME/.axiom-root/.axiom/axiom.json | ConvertFrom-Json)
    # if(!$prof.openvpn_path){
    #     if(Test-Path -Path "C:\Program Files\OpenVPN\bin\openvpn.exe"){
    #         $exeLocation = "C:\Program Files\OpenVPN\bin\openvpn.exe"
    #     }
    #     else {
    #         Write-Host "In order to run axiom-vpn you must hav OpenVPN installed"
    #         Write-Host "Please enter the full path to your OpenVPN Executable:"
    #         Write-Host "IE: C:\Program Files\OpenVPN\bin\openvpn.exe"
    #         $location = Read-Host -Prompt 'Location: '
    #         $exeLocation = $location
    #     }    
    #     Add-Member -InputObject $prof -MemberType NoteProperty -Name openvpn_path -Value $exeLocation
    #     $prof | ConvertTo-Json | Out-File -Encoding ascii -FilePath $HOME/.axiom/axiom.json    
    # }
    docker run -it --rm --network host -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-vpn --download "$@"
    set +f;  
    echo """
    VPN profile downloaded to $HOME/.axiom-root/.axiom/current-config.ovpn
    """
    # & $prof.openvpn_path $HOME\.axiom-root\.axiom\current-config.ovpn  
}
alias axiom-vpn='set -f; func-axiom-vpn'

func-axiom-wait () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-wait "$@"
    set +f;
}
alias axiom-wait="set -f; func-axiom-wait"

func-axiom-cli () {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom
    set +f;
}
alias axiom-cli="set -f; func-axiom-cli"
