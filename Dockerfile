From node:latest
WRKDIR /
ADD . .
RUN npm install
CMD ["node" ,"next dev"]