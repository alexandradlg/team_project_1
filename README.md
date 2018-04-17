# DAY 16

## Présentation du programme

Le programme a été fait par Quentin, Abdel, Selma, Morgane & Alexandra. 

### Objectifs du programme :
Le programme vise à récupérer les adresses emails des mairies de trois départements français pour ensuite :
- Stocker les données scrapées dans un document format JSON, CSV ou spreadsheet
- Leur envoyer un email via un programme ruby
- Chercher leurs comptes twitter et les ajouter au document des données scrapées dans une nouvelle colonne.
- Sur la base des comptes twitter ajoutés au document, suivre les utilisateurs concernés.

### Execution du programme

Le programme a été exécuté, pour vérifier son bon fonctionnement : 
- Sur le spreadsheet, il y a trois colonnes : Mairie / Zipcode / email qui correspondent au programme de scrapping. 
- Sur le même spreadsheet, il y a une quatrième colonne handle_twitter avec les users names qui correspond au programme de récupération des comptes twitter
- Sur le compte twitter du Le Chameau champêtre, on peut voir que les comptes sont follow.

Pour exécuter vous-même le programme : 
1. Lancer townhalls_scrapper_to_spreadsheet.rb
   Scrap et met dans une spreadsheet Google qui sera utilisée pour Twitter
2. Lancer townhalls_scrapper_to_csv.rb
   Scrap et met dans un CSv qui sera utilisé pour envoyer les emails
3. Lancer bot_twitter_find_users.rb
   Récupère les @ Twitter des Mairies et les stock dans Google Spreadsheet
4. Lancer bot_twitter_follow_users.rb
   Follow les @ présent dans Googel Spreadsheet
5. Lancer Send_Emails.rb
   Envois des emails aux mairie ayant un email dans le fichier CSV

## Liste Exercices :

1. Scrapper (Quentin & Morgane)
 - Récupère les emails de trois départements 
 - Sauvegarde en format CSV ou Google Spreadsheet selon le script (il y en a 2)
 - Nombre de mairie total 1182

2. Envoyer mail aux mairies (Abdel)
 - Email d envoi utilisé : Gmail créé pour l'occasion
 - Email envoyé 1103 (toutes les mairies n'avaient pas d'email)

3. Relance Twitter -> bot_twitter (Alex & Selma)
 - format utilisé : google spreadsheet 
 - lien du spreadsheet google: https://docs.google.com/spreadsheets/d/1AiQCScyKQt7rjXjAxKdzOqF0sycL2BZ4Fp4xOjtFD1g/edit#gid=0
 - programme 1 = bot_twitter_find_users.rb (pour chercher les comptes twitter et les ajouter au spreadsheet)
 - programme 2 = bot_twitter_follow_users.rb (pour follow les utilisateurs en récupérant les users id sur le spreadsheet)
 - ATTENTION : le programme 1 doit être lancé avant le programme 2, sinon il n'y aura personne à follow
 - compte twitter utilisé : @La_Gauchette https://twitter.com/La_Gauchette 


N'oubliez pas de configurer votre config.json avec vos tokens!!

## Installation
### Gem
https://github.com/sparklemotion/nokogiri
https://github.com/gimite/google-drive-ruby
https://github.com/bkeepers/dotenv
https://github.com/sferik/twitter
https://github.com/gmailgem/gmail

Une fois le fichier télécharger faire cette commande pour installer les Gem : 
```
bundle install
```

### Env
Créer 2 `.env` files dans les dossiers suivants:
 - send_emails
 - bot_twitter
 Pour le `.env` dans send_emails copier-coller ceci et le remplir avec les bons ID de la boite Gmail :
```
GMAIL_ID="ID HERE"
GMAIL_SECRET="MDP HERE"
```
Pour le `.env` dans bot_twitter copier coller ceci et remplir avec les bons ID et token : 
Dans l'ordre, identifiant de l'App Gdrive, Id compte Gmail, ID App Twitter
```
GOOGLE_DRIVE_CLIENT_ID="ID HERE"
GOOGLE_DRIVE_CLIENT_SECRET="ID HERE"

EMAIL="ID HERE"
PASSWORD="ID HERE"

TWITTER_API_CONSUMER_KEY="ID HERE"
TWITTER_API_CONSUMER_SECRET="ID HERE"
TWITTER_API_ACCESS_TOKEN="ID HERE"
TWITTER_API_ACCESS_TOKEN_SECRET="ID HERE"
```

## Pré-requis

Projet libre de droit et d'accès à la lecture/écriture. 
Pour pouvoir visualiser le projet, un simple navigateur suffit.


```
Firefox, Safari, Chrome, Internet Explorer 8, ...
```

## Construit avec

* Visual Studio Code
* GitHub
* De l'amour et des chouquettes


## Contributors

* Quentin : https://github.com/QUB-SPG

* Abdel : https://github.com/aitbali

* Alexandra : https://github.com/alexandradlg

* Selma : https://github.com/Asakab

* Morgane : https://github.com/Morganetoriupper

## Nos Slack

* Quentin : @Quentin

* Abdel : @Abdel

* Alexandra : @Alex

* Selma : @Asak

* Morgane : @Morgane


