docker run -p 3000:3000 -e CRUNCHBASE_KEY_4=$CRUNCHBASE_KEY_4 -e TWITTER_KEYS=$TWITTER_KEYS -e GITHUB_KEY=$GITHUB_KEY -it --user root --rm -v $(pwd)/../landscapeapp:/landscapeapp -v $(pwd):/repo -w /usr/app netlify/build:xenial /bin/bash -c 'echo $CRUNCHBASE_KEY_4; . /opt/buildhome/.nvm/install.sh; . /root/.nvm/nvm.sh; cd /landscapeapp; nvm install `cat .nvmrc`; nvm use `cat .nvmrc`; npm install -g yarn; yarn; PROJECT_PATH=/repo yarn open:src'
