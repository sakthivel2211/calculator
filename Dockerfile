FROM node:18.16.1-bullseye-slim

RUN useradd -m nonroot 

USER nonroot

RUN mkdir /home/nonroot/app

ENV APP_ROOT /home/nonroot/app

WORKDIR $APP_ROOT

COPY ./ $APP_ROOT

RUN npm install --ignore-scripts

CMD ["node", "app"]
