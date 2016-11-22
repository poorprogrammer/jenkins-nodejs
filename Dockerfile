FROM jenkins
# if we want to install via apt
USER root
RUN curl -SLO "https://nodejs.org/dist/v7.1.0/node-v7.1.0-linux-x64.tar.xz" \
&& tar -xJf "node-v7.1.0-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
&& ln -s /usr/local/bin/node /usr/local/bin/nodejs

RUN npm install -g bower karma-cli
USER jenkins
