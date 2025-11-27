# WANDJAM 

#### Application de gestion de salons de coiffure

Wandjam est une application mobile développée avec Flutter, conçue pour
faciliter la gestion complète des salons de coiffure ("wandjam" signifie
coiffure dans notre langue locale).\
Elle met en relation les clients, les coiffeurs/barbiers, et les
gestionnaires de salons, tout en automatisant les rendez-vous, les
services et le suivi des prestations.

## Fonctionnalités principales

### Gestion des utilisateurs

-   Rôles : Admin, Coiffeur/Barbier, Client\
-   Profil utilisateur avec photo\
-   Gestion des salons\
-   Affectation des coiffeurs aux salons

### Gestion des salons

-   Nom, adresse, images\
-   Galerie\
-   Coiffeurs associés\
-   Services proposés

### Services / Coiffures

-   Nom\
-   Description\
-   Images\
-   Prix\
-   Durée\
-   Catégorie

### Rendez-vous

-   Salon\
-   Service\
-   Coiffeur\
-   Horaire\
-   Statut

### Paiements (optionnel)

-   Historique\
-   Statistiques

## Modèle de données (MCD)

### Users

-   id\
-   nom\
-   téléphone\
-   email\
-   rôle\
-   image

### Salons

-   id\
-   nom\
-   localisation\
-   images\
-   disponibilité

### Services

-   id\
-   nom\
-   description\
-   images\
-   durée\
-   prix\
-   catégorie

### RendezVous

-   id\
-   date\
-   heure\
-   statut\
-   salon_id\
-   user_id\
-   coiffeur_id\
-   service_id

### TravaillerDans

-   user_id\
-   salon_id\
-   rôle

## Architecture Flutter

    lib/
     ├── models/
     ├── screens/
     ├── services/
     ├── providers/
     ├── widgets/
     └── utils/

## Installation

``` bash
git clone https://github.com/username/wandjam.git
cd wandjam
flutter pub get
flutter run
```

## Licence

MIT

## Contact

support@wandjam.com