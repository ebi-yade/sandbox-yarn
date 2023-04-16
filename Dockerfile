FROM --platform=linux/amd64 node:18.15

WORKDIR /usr/src/sandbox-yarn

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

CMD [ "node", "main.mjs" ]
