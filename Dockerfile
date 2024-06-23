From node:18
WORKDIR /usr/src/app
ADD . .
RUN npm install
CMD ["npm" ,"dev"]