FROM alpine
LABEL maintainer="sy14r"

COPY ./axiom-configure-docker /root/
COPY ./vars.sh /root/
# packages needed - gpg
RUN apk update && apk upgrade && \
    apk add \
        bash \
        curl \
        fzf \
        git \
        jq \
        openssh \
        openvpn \
        perl \
        rsync \
        tar \
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
    sed -i /etc/passwd -e 's#/bin/ash#/bin/bash#' && \
    cd /root && chmod +x axiom-configure-docker


ENTRYPOINT ["/bin/bash"]


