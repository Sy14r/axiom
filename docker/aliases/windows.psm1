# Appears functional 
function Invoke-AxiomBackup {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-backup $args
}
Set-Alias axiom-backup Invoke-AxiomBackup

# Appears functional
function Invoke-AxiomBoxes {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-boxes $args
}
Set-Alias axiom-boxes Invoke-AxiomBoxes

# Appears Functional
function Invoke-AxiomBudget {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-budget $args
}
Set-Alias axiom-budget Invoke-AxiomBudget

# Appears Functional
function Invoke-AxiomBuild {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-build $args
}
Set-Alias axiom-build Invoke-AxiomBuild

# Appears Functional
function Invoke-AxiomConfigure {
    New-Item -ItemType Directory -Path $HOME/.axiom -ErrorAction SilentlyContinue 1>$null
    New-Item -ItemType Directory -Path $HOME/.axiom/.ssh -ErrorAction SilentlyContinue 1>$null
    New-Item -ItemType Directory -Path $HOME/.axiom/.config -ErrorAction SilentlyContinue 1>$null
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/axiom-configure-docker
}
Set-Alias axiom-configure Invoke-AxiomConfigure

# Appears functional
function Invoke-AxiomConnect {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-connect $args
}
Set-Alias axiom-connect Invoke-AxiomConnect

# Appears functional
function Invoke-AxiomDeploy {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-deploy $args
}
Set-Alias axiom-deploy Invoke-AxiomDeploy

# Appears functional
function Invoke-AxiomDNS {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-dns $args
}
Set-Alias axiom-dns Invoke-AxiomDNS
# HERENOW

# Need to check
function Invoke-AxiomRm {
    $count = 0
    foreach($arg in $args){
        if($arg -eq "*"){
            $args[$count] = "\*"
        }
        $count += 1
    }
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-rm $args
}
Set-Alias axiom-rm Invoke-AxiomRm

# Good
function Invoke-AxiomVPN {
    $prof = (Get-Content $HOME/.axiom/axiom.json | ConvertFrom-Json)
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
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-vpn --download $args
    & $prof.openvpn_path $HOME\.axiom\current-config.ovpn    
}
Set-Alias axiom-vpn Invoke-AxiomVPN


# Appears functional
function Invoke-AxiomInit {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-init $args
}
Set-Alias axiom-init Invoke-AxiomInit


# Appears functional
function Invoke-AxiomLs {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-ls $args
}
Set-Alias axiom-ls Invoke-AxiomLs

# Appears functional
function Invoke-AxiomUpdate {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-update $args
}
Set-Alias axiom-update Invoke-AxiomUpdate

# Appears functional
function Invoke-AxiomSelect {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-select $args
}
Set-Alias axiom-select Invoke-AxiomSelect