From node:18
WORKDIR  /apps
ADD . .
RUN npm install
CMD ["node" ,"dev"]