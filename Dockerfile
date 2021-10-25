FROM node:16-alpine

WORKDIR /app

# Copy our stuff first
COPY package.json .yarnrc.yml yarn.lock /app/
COPY .yarn/ /app/.yarn/
COPY utils /app/utils
COPY modlogs notices security /app/public/
COPY docker/entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN apk add --no-cache bash coreutils dumb-init nginx; CI=true yarn install

COPY ./docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
CMD [ "nginx-json-api" ]
