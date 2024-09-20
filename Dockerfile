FROM          redhat/ubi9
RUN           dnf install xz -y
RUN           cd /opt && curl -L -O https://nodejs.org/dist/v22.9.0/node-v22.9.0-linux-x64.tar.xz && tar -xf node-v22.9.0-linux-x64.tar.xz
ENV           PATH=/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/node-v22.9.0-linux-x64
RUN           mkdir /app
WORKDIR       /app
COPY          package.json server.js ./
RUN           npm install
ENTRYPOINT    ["node", "server.js"]
