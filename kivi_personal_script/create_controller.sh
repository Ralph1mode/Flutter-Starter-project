#!/bin/bash

# Vérifions si le nom du contrôleur est fourni
if [ -z "$1" ]; then
    echo "Usage: create_controller.sh <controller_name>"
    exit 1
fi

# Création du fichier du contrôleur
mkdir -p lib/ui/controllers
touch lib/ui/controllers/${1}_controller.dart

# Création du contenu du contrôleur
echo "import 'package:get/get.dart';

class ${1^}Controller extends GetxController {

}
" > lib/controllers/${1}_controller.dart


./create_controller.sh my_controller

chmod +x create_controller.sh

echo "Controller ${1^} créé avec succès!"
