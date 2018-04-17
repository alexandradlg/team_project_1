# DAY 16

## Présentation du programme

Le programme a été fait par Quentin, Abdel, Selma, Morganne & Alexandra. 

### Objectifs du programme :
Le programme vise à récupérer les adresses emails des mairies de trois départements français pour ensuite :
- Stocker les données scraper dans un document format JSON, CSV ou spreadsheet
- Leur envoyer un email via un programme ruby
- Chercher leurs comptes twitter et les ajouter au document des données scrapées dans une nouvelle colonne.
- Sur la base des comptes twitter ajoutés au document, suivre les utilisateurs concernés.

## Liste Exercices :

1. Scrapper -> récupérer les emails de trois départements (Quentin & Morgane)

2. Envoyer mail aux mairies (Abdel)

3. Relance Twitter -> bot_twitter (Alex & Selma)
 - format utilisé : google spreadsheet 
 - lien du spreadsheet google: https://docs.google.com/spreadsheets/d/1AiQCScyKQt7rjXjAxKdzOqF0sycL2BZ4Fp4xOjtFD1g/edit#gid=0
 - programme 1 = bot_twitter_find_users.rb (pour chercher les comptes twitter et les ajouter au spreadsheet)
 - programme 2 = bot_twitter_follow_users.rb (pour follow les utilisateurs en récupérant les users id sur le spreadsheet)
 - compte twitter utilisé : @La_Gauchette https://twitter.com/La_Gauchette 


N'oubliez pas de configurer votre config.json avec vos tokens.

## Gem requise :
https://github.com/sparklemotion/nokogiri
https://github.com/gimite/google-drive-ruby
https://github.com/bkeepers/dotenv
https://github.com/sferik/twitter
https://github.com/gmailgem/gmail

J'ai un Gemfile. Une fois le projet DL, il faut faire : 
```
bundle install
```
une fois le dossier DL sur votre PC. 

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


