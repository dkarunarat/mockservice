FROM node:alpine3.14

RUN mkdir -p /opt/software/mockservice

WORKDIR /opt/software/mockservice
COPY package.json /opt/software/mockservice
RUN npm config set loglevel error && npm install
COPY . /opt/software/mockservice

ENTRYPOINT ["node"]
CMD ["./index.js"]
