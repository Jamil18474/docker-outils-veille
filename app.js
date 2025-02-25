// Importer le module express
const express = require('express');

// Créer une instance de l'application Express
const app = express();

// Définir le port sur lequel le serveur écoutera
const PORT = process.env.PORT || 3000;

// Définir une route pour la racine
app.get('/', (req, res) => {
    res.send('Hello, World! Welcome to my Express app!');
});

// Démarrer le serveur
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
