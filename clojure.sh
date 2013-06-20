#!/usr/bin/env bash

apt-get install -y openjdk-7-jdk
curl https://raw.github.com/technomancy/leiningen/stable/bin/lein | tee /usr/local/bin/lein
chmod +x /usr/local/bin/lein
lein self-install