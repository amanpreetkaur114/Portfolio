From node:latest
WRKDIR /apps
ADD . .
RUN npm install
CMD ["node" ,"next dev"]