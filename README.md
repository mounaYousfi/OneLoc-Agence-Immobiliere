# OneLoc-Agence-Immobiliere
OneLoc – Application Web de Location
🎯 Objectif

OneLoc est une plateforme web innovante visant à faciliter la location de biens immobiliers. Elle permet aux utilisateurs de louer ou de mettre en location des appartements et des maisons, tout en offrant une expérience sécurisée et fluide pour les propriétaires et les locataires.

⚙️ Fonctionnalités principales
1. Authentification & Gestion des Rôles

Types d’utilisateurs :

Propriétaire : possibilité de publier et gérer ses annonces.

Locataire : possibilité de rechercher, réserver et payer pour les biens.

Gestion complète de l’inscription et de la connexion.

2. Gestion des Annonces

Propriétaire :

Ajouter une annonce avec titre, description, prix par jour, adresse, ville, etc.

Télécharger plusieurs photos par annonce.

Modifier ou supprimer ses annonces.

Affichage dynamique des annonces sous forme de cartes avec image, prix et bouton « Voir plus ».

3. Recherche & Filtres

Recherche avancée avec filtres :

Ville / localisation

Prix minimum / maximum

Type de bien

Disponibilité (dates)

Barre de recherche dynamique pour une navigation rapide et intuitive.

4. Réservation

Sélection d’une période de location par le locataire.

Notification de réservation pour le propriétaire.

Gestion du statut des réservations : « En attente », « Acceptée », « Refusée ».

5. Messagerie Intelligente

Chatbot intégré pour assistance et réponses automatiques aux questions des utilisateurs.

6. Espace Utilisateur / Tableau de Bord

Consultation de toutes ses annonces et réservations.

Suivi des réservations reçues ou envoyées.

Modification du profil, photo de profil et coordonnées personnelles.

7. Panel Administrateur

Gestion des utilisateurs, annonces et signalements.

Suppression du contenu inapproprié.

Statistiques globales : nombre d’annonces, réservations et revenus générés.

OneLoc vise à offrir une solution complète pour la location de biens, en combinant simplicité, sécurité et efficacité, tout en permettant aux utilisateurs de gérer facilement leurs annonces et réservations 
⚙️ Installation du projet
composer install
cp .env .env.local
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
⚙️ Run du projet
symfony serve
http://localhost:8000


partir d’une interface moderne et intuitive.

