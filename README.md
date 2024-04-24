# Flutter Starter app

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

Un projet de base préconfiguré pour vous aider à démarrer rapidement avec Flutter. Il fournit une structure initiale, des dépendances et un code source de base qui permettent à quiconque de cloner le projet et de commencer à développer sans avoir à configurer un projet à partir de zéro.




## Installation

### Prérequis
Dart SDK doit être installé sur votre machine. Si ce n'est pas le cas, vous pouvez le télécharger et l'installer depuis le site officiel de Dart.

Flutter SDK doit être installé sur votre machine. Si ce n'est pas le cas, vous pouvez le télécharger et l'installer depuis le site officiel de Flutter.

### Étapes d'installation
-   Vous n'avez qu'a cloner ce projet
```bash
git clone https://github.com/Ralph1mode/Flutter-Starter-project

```
-   Mise à jour des dépendances : Exécutez la commande suivante pour installer les dépendances nécessaires à votre projet Flutter :
```bash
flutter pub get
```

## Documentation
## Architecture : Clean Architecture
Clean Architecture consiste à séparer le code en couches, chacune ayant une responsabilité distincte. Les couches principales comprennent :

1. ### Couche de présentation :
   Cette couche concerne l'interface utilisateur et les interactions. Il comprend des widgets, des vues et des contrôleurs responsables de la saisie utilisateur et de l'affichage des données.

3.  ### Couche de domaine :
    la couche de domaine définit la logique métier fondamentale et les modèles de domaine de l'application. Il reste indépendant des frameworks ou bases de données d’interface utilisateur spécifiques, garantissant une réutilisabilité et une testabilité élevées.

4.  ### La couche de données :
    cette couche gère le stockage, la récupération et les interactions des données avec les API externes. Il englobe les référentiels, les sources de données et les clients API.
## Gestion des Etats en Flutter avec GetX
### C'est quoi GetX ?
GetX est une solution extra légère et puissante pour Flutter. Il combine une gestion d'état haute performance, une injection intelligente de dépendances et une gestion des itinéraires de manière rapide et pratique.

### Pourquoi Getx ?
-   Avec Getx, les ressources sont automatiquement supprimées de la mémoire lorsqu'elles ne sont pas utilisées par défaut.
-   GetX permet un découplage total de la vue, de la logique de présentation, de la logique métier, de l'injection de dépendances et de la navigation.
-   Nous n'avons pas besoin de contexte pour accéder à nos contrôleurs/blocs via un widget hérité
-   GetX utilise sa propre fonctionnalité d'injection de dépendances, dissociant complètement le DI de sa vue.
-   GetX n'utilise pas Streams ou ChangeNotifier comme les autres gestionnaires d'état.
-   Avec GetX, même les widgets imbriqués sont respectés.

1.  [Lire plus.. GetX](https://medium.com/@gauravswarankar/getx-flutter-part-1-e1591db6ea12)

https://medium.com/@gauravswarankar/getx-flutter-part-1-e1591db6ea12

2.  [Lire plus.. Clean Architecture avec GetX](https://dev.to/ahmaddarwesh/flutter-getx-clean-architecture-4ppk)

https://dev.to/ahmaddarwesh/flutter-getx-clean-architecture-4ppk


Nous n'avons pas que Getx, on y trouve aussi Bloc pour la gestion des états en flutter

## Bloc
BLoC est le diminutif de B uss L ogic C omponent , c'est un patron de conception créé par Google qui a pour objectif de permettre la séparation entre la partie UI et la partie logique de notre code.

Je vous invite à lire plus sur ce site ..
https://medium.com/@alioune.kanoute/introduction-au-pattern-bloc-avec-flutter-47b8fe47136f
## Configuration de différents environnements : Flavour
Etes-vous déjà demandé comment configurer différents environnements dans votre application Flutter ? comme différentes URL d'API, clés d'API et icônes pour le développement et la production ?

Vous avez la bonne ressource, pour y parvenir suivez ce lien..
https://dwirandyh.medium.com/create-build-flavor-in-flutter-application-ios-android-fb35a81a9fac

Dans le cas de Starter app, nous avont prévue deux environnements: Dev (développement) et Prod (Production)

## Gestion du routage avec Getx
Vu les avantages, notamment la Simplicité - la flexibilité - la perfomance
Nous avons choisi la gestion des routes avec Getx

[lire plus sur le routage avec Getx](https://medium.com/@onalojoseph96/getx-routing-management-in-flutter-7c44f785e592)

https://medium.com/@onalojoseph96/getx-routing-management-in-flutter-7c44f785e592
## Internationnalisation

Ce projet utilise l'internationalisation (l10n) de Flutter pour supporter plusieurs langues. Nous avons utilisé la classe Intl pour formater les dates, les nombres et les chaînes de caractères selon la locale de l'utilisateur.

https://murtazasulaihi.medium.com/the-power-of-internationalization-and-localization-in-flutter-reaching-global-audiences-5c56931133c1
## ms-generator
MS Generator est un outil de génération de code Dart pour vous aider à créer rapidement des cas d'utilisation (usecases), des dépôts (repositories), des pages Flutter et des entités dans vos projets.

### utilisation
Pour utiliser MS Generator, exécutez le script ms-generator.dart avec les arguments appropriés comme suit:
```dart ms-generator.dart <type> <name>```

#### Types disponibles
*usecase <name>* : Crée un nouveau cas d'utilisation avec le nom spécifié.

*repository <name>* : Crée un nouveau dépôt et son implémentation avec le nom spécifié

*page <name>* : Crée une nouvelle page Flutter avec le nom spécifié.

*entity <name>* : Crée une nouvelle entité avec le nom spécifié

#### Arguments optionnels pour "entity"
Pour le type "entity", vous pouvez ajouter des arguments optionnels pour générer automatiquement un repository, une implémentation du repository, un usecase et une page.

Usage: dart ms-generator.dart entity <name> [<-arguments> optionnels]

Exemple : ```dart ms-generator.dart entity user -rup```

Cette commande générera une entité nommée User avec son reposistory, l'implémentation du repository, son cas d'utilisation et sa page correspondants.
-   r : Crée un repository et son implémentation.
-   u : Crée un cas d'utilisation.
-   p : Crée une page.

#### Aide
Pour afficher l'aide, exécutez :
```dart ms-generator.dart --help```

#### Authors [@kivi raoul](https://github.com/ralph1mode)

## License

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)


## Feedback

Si vous avez des commentaires, n'hésitez pas à nous contacter à l'adresse suivante raoulkivi24@gmail.com

