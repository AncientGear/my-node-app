FROM node:22.17.1-alpine3.22

WORKDIR /app

LABEL app=my-node-app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# CMD ["npm", "start"]
# ENTRYPOINT ["npm", "start"]
# ENTRYPOINT ["node"]
CMD ["node", "/app/bin/www"]
# CMD ["npm", "run", "start"]
