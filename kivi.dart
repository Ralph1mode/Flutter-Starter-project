import 'dart:io';

void main(List<String> arguments) {
  //check arguments conditions
  if (arguments.isEmpty) {
    print(
        '''Usage: dart kivi.dart <type> <name>\nor run "dart kivi.dart help" for more information
          ''');
    return;
  }

  switch (arguments[0]) {
    case 'usecase':
      createUsecase(arguments[1]);
      break;
    case 'repository':
      createRepository(arguments[1]);
      break;
    case 'page':
      createPage(arguments[1]);
      break;
    case 'entity':
      createEntity(arguments[1]);
      break;
    case 'help':
      forHelp();
      break;
    default:
      print('Invalid type');
      break;
  }
}

void createUsecase(String name) {
  String fileName = 'lib/domain/usecases/${name}_usecase.dart';
  File file = File(fileName);

  file.writeAsStringSync('''
  
  //******************
  // Genereted by kivi
  //******************
  
    class Get${_toUpperCamelCase(name)}Usecase {
      Future<${_toUpperCamelCase(name)}?> call(int ${name}Id);
    }
  ''');

  print('Usecase created successfully');
}

void createRepository(String name) {
  String repositoryFileName = 'lib/domain/repositories/${name}_repository.dart';
  String repositoryImplFileName =
      'lib/domain/repositories/implementations/${name}_repository_impl.dart';

  File repositoryFile = File(repositoryFileName);
  File repositoryImplFile = File(repositoryImplFileName);

  repositoryFile.writeAsStringSync('''
  
    //******************
    // Genereted by kivi
    //******************

    abstract class ${_toUpperCamelCase(name)}Repository {
    
      Future<${_toUpperCamelCase(name)}?> call(int ${name}Id);
      
      Future<List<${_toUpperCamelCase(name)}?>> getAll();
      
      Future<void> insert(${_toUpperCamelCase(name)} $name);
      
      Future<void> update(${_toUpperCamelCase(name)} $name);
      
      Future<void> delete(int id);
      
    }
  ''');

  repositoryImplFile.writeAsStringSync('''
    import '../${name}_repository.dart';
    
    //******************
    // Genereted by kivi
    //******************
    
    abstract class ${_toUpperCamelCase(name)}RepositoryImpl implements ${_toUpperCamelCase(name)}Repository {
      final Get${_toUpperCamelCase(name)}Usecase get${_toUpperCamelCase(name)}UseCase;
      ${_toUpperCamelCase(name)}RepositoryImpl(this.get${_toUpperCamelCase(name)}UseCase);    
      
      @override
      Future<void> delete(int id) {
        // TODO: implement delete
        throw UnimplementedError();
      }
    
      Future<List<${_toUpperCamelCase(name)}?>> getAll() {
        // TODO: implement getAll
        throw UnimplementedError();
      }
    
      @override
      Future<void> insert(${_toUpperCamelCase(name)} $name) {
        // TODO: implement insert
        throw UnimplementedError();
      }
    
      @override
      Future<void> update(${_toUpperCamelCase(name)} $name) {
        // TODO: implement update
        throw UnimplementedError();
      }

    }
  ''');

  print('Repository and RepositoryImpl created successfully');
}

void createPage(String name) {
  String fileName = 'lib/ui/pages/${name}_page.dart';
  File file = File(fileName);

  String upperCamelCaseName = _toUpperCamelCase(name);

  file.writeAsStringSync('''
import 'package:flutter/material.dart';

//******************
// Genereted by kivi
//******************

class ${upperCamelCaseName}Page extends StatelessWidget {
  const ${upperCamelCaseName}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
 }
  ''');

  print('Page created successfully');
}

void createEntity(String name) {
  String fileName = 'lib/domain/entities/${name}_entity.dart';
  File file = File(fileName);

  String upperCamelCaseName = _toUpperCamelCase(name);

  file.writeAsStringSync('''


//******************
// Genereted by kivi
//******************

class $upperCamelCaseName {
  final String id;
  final String name;
  final String description;

  $upperCamelCaseName({
    required this.id,
    required this.name,
    required this.description,
  });

  // Constructor for converting a Map into a $name Entity
  factory $upperCamelCaseName.fromMap(Map<String, dynamic> map) {
    return $upperCamelCaseName(
      id: map['id'],
      name: map['name'],
      description: map['description'],
    );
  }

  // Convert $upperCamelCaseName Entity instance to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }
}  ''');

  print('Entity created successfully');
}

void forHelp() {
  print('''
  Usage: dart kivi.dart <type> <name>.
  Types:
    - usecase <name>: Create a new usecase with the specified name.
    - repository <name>: Create a new repository and its implementation with the specified name.
    - page <name>: Create a new Flutter page with the specified name.
    - entity <name>: Create a new entity with the specified name.
    - help: Display help.
  ''');
}

String _toUpperCamelCase(String input) {
  if (input.isEmpty) {
    return '';
  }
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}
