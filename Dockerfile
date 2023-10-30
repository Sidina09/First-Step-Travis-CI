# importer image
FROM node

#Executer sur travis
RUN mkdir /usr/src/app

# Creér un directori
WORKDIR /usr/src/app

#Path env test travis 
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# copy  source au dest : copier package json au nos resources ce dossier 
COPY package*.json ./

# Execution la commande
RUN npm install

# Copy source au dest : copier tous dans notre dosier dockerfile
COPY . /usr/src/app

# Exposer le port
EXPOSE 4000

# Commande excutable
CMD [ "npm", "start" ]
