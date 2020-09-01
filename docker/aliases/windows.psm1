# Appears functional 
function Invoke-AxiomBackup {
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-backup $args
}
Set-Alias axiom-backup Invoke-AxiomBackup

# Appears functional
function Invoke-AxiomBoxes {
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-boxes $args
}
Set-Alias axiom-boxes Invoke-AxiomBoxes

# Appears Functional
function Invoke-AxiomBudget {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-budget $args
}
Set-Alias axiom-budget Invoke-AxiomBudget

# Appears Functional
function Invoke-AxiomBuild {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-build $args
}
Set-Alias axiom-build Invoke-AxiomBuild

# Appears Functional
function Invoke-AxiomConfigure {
    New-Item -ItemType Directory -Path $HOME/.axiom-root -ErrorAction SilentlyContinue 1>$null
    if(Test-Path $HOME/.axiom-root/.axiom){
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-configure $args
    } 
    else {
        docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /axiom-configure $args
    }
}
Set-Alias axiom-configure Invoke-AxiomConfigure

# Appears functional
function Invoke-AxiomConnect {
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-connect $args
}
Set-Alias axiom-connect Invoke-AxiomConnect

# Appears functional
function Invoke-AxiomDeploy {
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-deploy $args
}
Set-Alias axiom-deploy Invoke-AxiomDeploy

# Appears functional
function Invoke-AxiomDNS {
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-dns $args
}
Set-Alias axiom-dns Invoke-AxiomDNS

# Appears functional
function Invoke-AxiomDocker {
    Write-Host "Support for remote docker host via axiom is not supported in Windows"
}
Set-Alias axiom-docker Invoke-AxiomDocker

# Appears functional
function Invoke-AxiomExec {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-exec $args
}
Set-Alias axiom-exec Invoke-AxiomExec

# Appears functional
function Invoke-AxiomExecB {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-execb $args
}
Set-Alias axiom-execb Invoke-AxiomExecB

# Appears functional
function Invoke-AxiomFleet {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-fleet $args
}
Set-Alias axiom-fleet Invoke-AxiomFleet

# Appears functional
function Invoke-AxiomInit {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-init $args
}
Set-Alias axiom-init Invoke-AxiomInit

# Appears functional
function Invoke-AxiomLs {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-ls $args
}
Set-Alias axiom-ls Invoke-AxiomLs

# Appears functional
# use net host and install proxy chains in the container
function Invoke-AxiomProxy {
    Write-Host "Support for proxy via axiom is not supported in Windows"
}
Set-Alias axiom-docker Invoke-AxiomProxy


# Need to check
function Invoke-AxiomPrune {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-prune $args
}
Set-Alias axiom-prune Invoke-AxiomPrune

# Appears functional
function Invoke-AxiomRegion {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-region $args
}
Set-Alias axiom-region Invoke-AxiomRegion

# Appears to work
function Invoke-AxiomRestore {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-restore $args
}
Set-Alias axiom-restore Invoke-AxiomRestore

# Appears to work
function Invoke-AxiomRm {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-rm $args
}
Set-Alias axiom-rm Invoke-AxiomRm

# Appears to work
function Invoke-AxiomScan {
    $count = 0
    $targFile = ""
    foreach($arg in $args){
        if($arg.startswith('-iL=')){
            $targFile = ($arg -split '=')[1]
            $targContent = Get-Content $targFile 
            $targContent | Out-File -Encoding ascii $targFile
        }
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker create --name axiom-scan -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-scan $args
    docker cp $targFile axiom-scan:/$targFile
    docker start -i -a axiom-scan 
}
Set-Alias axiom-scan Invoke-AxiomScan

# Works but will need to have documentation on the quirks around using -u= for specifiying file upload
# For scp use files in current dir or below you and then mount $PWD
function Invoke-AxiomSCP {
    docker run --name axiom-scp -it --rm -v $PWD.Path/:/tmp -v $HOME/.axiom-root:/root sy14r/axiom "cd /tmp; /root/.axiom/interact/axiom-scp $args"
}
Set-Alias axiom-scp Invoke-AxiomSCP

# Appears functional
function Invoke-AxiomSelect {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-select $args
}
Set-Alias axiom-select Invoke-AxiomSelect

# Appears functional
function Invoke-AxiomSSH {
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-ssh $args
}
Set-Alias axiom-ssh Invoke-AxiomSSH

# Appears functional
function Invoke-AxiomUpdate {
    docker pull sy14r/axiom
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-update $args
}
Set-Alias axiom-update Invoke-AxiomUpdate

# Appears functional
function Invoke-AxiomVPN {
    $prof = (Get-Content $HOME/.axiom-root/.axiom/axiom.json | ConvertFrom-Json)
    if(!$prof.openvpn_path){
        if(Test-Path -Path "C:\Program Files\OpenVPN\bin\openvpn.exe"){
            $exeLocation = "C:\Program Files\OpenVPN\bin\openvpn.exe"
        }
        else {
            Write-Host "In order to run axiom-vpn you must hav OpenVPN installed"
            Write-Host "Please enter the full path to your OpenVPN Executable:"
            Write-Host "IE: C:\Program Files\OpenVPN\bin\openvpn.exe"
            $location = Read-Host -Prompt 'Location: '
            $exeLocation = $location
        }    
        Add-Member -InputObject $prof -MemberType NoteProperty -Name openvpn_path -Value $exeLocation
        $prof | ConvertTo-Json | Out-File -Encoding ascii -FilePath $HOME/.axiom/axiom.json    
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-vpn --download $args
    & $prof.openvpn_path $HOME\.axiom-root\.axiom\current-config.ovpn    
}
Set-Alias axiom-vpn Invoke-AxiomVPN

# Appears functional
function Invoke-AxiomWait {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom-root:/root sy14r/axiom /root/.axiom/interact/axiom-wait $args
}
Set-Alias axiom-wait Invoke-AxiomWait

# Appears functional
function Invoke-AxiomCLI {
    docker run -it --rm -v $PWD.Path/:/tmp -v $HOME/.axiom-root:/root sy14r/axiom "bash"
}
Set-Alias axiom-cli Invoke-AxiomCLI












