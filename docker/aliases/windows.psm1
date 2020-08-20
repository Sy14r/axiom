# Appears functional 
function Invoke-AxiomBackup {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-backup $args
}
Set-Alias axiom-backup Invoke-AxiomBackup

# Need to check
function Invoke-AxiomBoxes {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-boxes $args
}
Set-Alias axiom-boxes Invoke-AxiomBoxes

# HERENOW


# Need to check
function Invoke-AxiomRm {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-rm $args
}
Set-Alias axiom-rm Invoke-AxiomRm


# Appears Functional
function Invoke-AxiomConfigure {
    New-Item -ItemType Directory -Path $HOME/.axiom -ErrorAction SilentlyContinue 1>$null
    New-Item -ItemType Directory -Path $HOME/.axiom/.ssh -ErrorAction SilentlyContinue 1>$null
    New-Item -ItemType Directory -Path $HOME/.axiom/.config -ErrorAction SilentlyContinue 1>$null
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/axiom-configure-docker
}
Set-Alias axiom-configure Invoke-AxiomConfigure

# Appears functional
function Invoke-AxiomInit {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-init $args
}
Set-Alias axiom-init Invoke-AxiomInit

# Appears functional
function Invoke-AxiomConnect {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-connect $args
}
Set-Alias axiom-connect Invoke-AxiomConnect

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





# Need to check
function Invoke-AxiomBudget {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-budget $args
}
Set-Alias axiom-budget Invoke-AxiomBudget

# Need to check
function Invoke-AxiomBuild {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-build $args
}
Set-Alias axiom-build Invoke-AxiomBuild

# Need to check
function Invoke-AxiomDeploy {
    docker run -it --rm -v $HOME/.axiom:/root/.axiom -v $HOME/.axiom/.ssh:/root/.ssh -v $HOME/.axiom/.config:/root/.config sy14r/axiom /root/.axiom/interact/axiom-deploy $args
}
Set-Alias axiom-deploy Invoke-AxiomBuildAxiomDeploy