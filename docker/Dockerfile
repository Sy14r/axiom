FROM ubuntu
LABEL maintainer="sy14r"

# bootstrapped startup files
COPY ./axiom-configure-docker /axiom-configure
COPY ./vars.sh /
# packages needed - gpg
RUN apt update && apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive \
    TZ=America/Denver apt install -y \
        bash \
        bc \
        bsdmainutils \
        curl \
        fzf \
        git \
        jq \
        openvpn \
        perl \
        python3 \
        python3-setuptools \
        rsync \
        ssh \
        sudo \
        tar \
        unzip \
        util-linux \
        && \
    curl -sL https://github.com/digitalocean/doctl/releases/download/v1.46.0/doctl-1.46.0-linux-amd64.tar.gz | tar -xzv && \
        mv doctl /usr/local/bin && \
    curl https://releases.hashicorp.com/packer/1.5.6/packer_1.5.6_linux_amd64.zip -o packer.zip && \
        unzip packer.zip && \
        mv packer /usr/local/bin && \
        rm -f packer.zip && \
    curl -sL https://golang.org/dl/go1.14.4.linux-amd64.tar.gz | tar -xzv && \
        # tar -xzv go.tar.gz && \
        mv go /usr/local/bin && \
        # export GOROOT=/usr/local/go && \
        # export GOPATH=$HOME/go && \
        # export PATH=$GOPATH/bin:$GOROOT/bin:$PATH && \
        echo "export GOROOT=/usr/local/go" >>/root/.bash_profile && \
        echo "export GOPATH=\$HOME/go" >>/root/.bash_profile && \
        echo "export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >>/root/.bash_profile && \
    git clone https://github.com/codingo/Interlace.git && cd Interlace && python3 setup.py install && \
    sed -i /etc/passwd -e 's#/bin/ash#/bin/bash#' && \
    chmod +x /axiom-configure && \
    touch /.axiom-docker

ENTRYPOINT ["/bin/bash"]