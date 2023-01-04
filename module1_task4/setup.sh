#!/bin/bash
apt-get update && apt-get install -y hugo make curl build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /root/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install hugo
make build