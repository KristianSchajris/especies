FROM node:12.22.1-alpine3.11

WORKDIR /
COPY . .
RUN yarn install --production

CMD ["yarn run dev", "/src/index.js"]
