From node:18
WRKDIR /apps
ADD . .
RUN npm install
CMD ["node" ,"next dev"]