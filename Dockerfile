# Utiliser une image de base sans version spécifiée
FROM node:latest

# Utiliser ADD au lieu de COPY pour copier des fichiers
ADD . /app

# Copier des fichiers dans un répertoire relatif sans WORKDIR
COPY . .

# Installer des dépendances dans des instructions RUN séparées
RUN npm install express
RUN npm install nodemon

# Installer des dépendances sans utiliser package.json
RUN npm install

# Utiliser des commandes RUN multiples sans nettoyage
RUN apt-get update && apt-get install -y curl \
    && apt-get install -y vim

# Utiliser une commande non sécurisée
CMD ["node", "app.js"]