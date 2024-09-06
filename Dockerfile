FROM          node
RUN           mkdir /app
WORKDIR       /app
COPY          package.json server.js ./
RUN           npm install
ENTRYPOINT    ["node", "server.js"]
