FROM hypriot/rpi-node:0.12.0

ADD package.json /code/
WORKDIR /code
RUN npm install
ADD . /code
ENV NODE_ENV production
EXPOSE 3000
CMD [ "node", "server.js"]