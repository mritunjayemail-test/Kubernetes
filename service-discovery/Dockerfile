FROM node
RUN mkdir -p /user/src/app
WOrKDIR /user/src/app
COPY ./app/ ./
RUN npm install
CMD ["node", "app.js"]