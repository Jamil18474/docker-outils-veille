# Utiliser une image de base avec une version spécifiée
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers dans le répertoire de travail
COPY package*.json ./
RUN npm install --production

# Copier le reste des fichiers de l'application
COPY . .

# Installer des dépendances spécifiques avec des versions épinglées
RUN npm install express@4.18.2 nodemon@2.0.22

# Installer des paquets avec des versions épinglées et sans recommandations
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl=7.68.0-1ubuntu2.6 vim=2:8.1.2269-1ubuntu5 && \
    rm -rf /var/lib/apt/lists/*

# Commande pour démarrer l'application
CMD ["node", "app.js"]
