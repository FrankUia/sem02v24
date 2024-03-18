from ubuntu:24.04
run apt-get update \
&& apt-get dist-upgrade -y \
&& apt-get autoremove -y \
&& apt-get autoclean -y \
&& apt-get install -y \
sudo \
nano \
wget \
curl \
git
run useradd -G sudo -m -d /home/ -s /bin/bash -p "$(openssl
passwd -1 Frank)" Frank
user Frank
workdir /home/Frank
run mkdir hacking \
&& cd hacking \
&& curl -SL
https://raw.githubusercontent.com/uia-worker/is105misc/master/sem01v2
4/pawned.sh > pawned.sh \
&& chmod 764 pawned.sh \
&& cd ..
run git config --global user.email "frank.hovet@live.com"
\
&& git config --global user.name "FrankUia" \
&& git config --global url."https://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:@github.com/".insteadOf
"https://github.com" \
&& mkdir -p github.com/FrankUia
user root
run curl -SL https://go.dev/dl/go1.21.7.linux-amd64.tar.gz \
| tar xvz -C /usr/local
user Frank
shell ["/bin/bash", "-c"]
run mkdir -p $HOME/go/{src,bin}
env GOPATH="/home/Frank/go"
env PATH="${PATH}:${GOPATH}/bin:/usr/local/go/bin"