import 'dart:io';

void main(List<String> arguments) {
  //check arguments conditions
  if (arguments.isEmpty) {
    print(
        '''Usage: dart ms-generator.dart <type> <name>\nor run "dart ms-generator.dart help" for more information
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
      (arguments.length == 3) ? createRUP(arguments[1], arguments[2]) : null;
      break;
    case 'help':
      forHelp();
      break;
    default:
      print('Invalid type');
      break;
  }
}

createRUP(String name, String arguments) {
  if (arguments.isNotEmpty && arguments.startsWith('-')) {
    if (arguments.contains('r')) {
      createRepository(name);
    }
    if (arguments.contains('u')) {
      createUsecase(name);
    }
    if (arguments.contains('p')) {
      createPage(name);
    }
  } else {}
}

createUsecase(String name) async {
  String fileName = 'lib/domain/usecases/${name}_usecase.dart';
  File file = File(fileName);
  if (await file.exists()) {
    print('${fileName} Already exits! creation canceled');
  } else {
    file.writeAsStringSync('''
  
 
    class Get${_toUpperCamelCase(name)}Usecase {
      Future<${_toUpperCamelCase(name)}?> call(int ${name}Id){
       // TODO: implement call
       throw UnimplementedError();
      }
    }
  ''');

    print('Usecase created successfully');
  }
}

createRepositoryImplementation(String name) async {
  String repositoryImplFileName =
      'lib/domain/repositories/implementations/${name}_repository_impl.dart';

  File repositoryImplFile = File(repositoryImplFileName);
  if (await repositoryImplFile.exists()) {
    print('${repositoryImplFileName} Already exits! creation canceled');
  } else {
    repositoryImplFile.writeAsStringSync('''
    import '../${name}_repository.dart';
        
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

    print('Repository implementation created successfully');
  }
}

createRepository(String name) async {
  String repositoryFileName = 'lib/domain/repositories/${name}_repository.dart';

  File repositoryFile = File(repositoryFileName);
  if (await repositoryFile.exists()) {
    print('${repositoryFileName} Already exits! creation canceled');
  } else {
    repositoryFile.writeAsStringSync('''
  
    abstract class ${_toUpperCamelCase(name)}Repository {
    
      Future<${_toUpperCamelCase(name)}?> call(int ${name}Id);
      
      Future<List<${_toUpperCamelCase(name)}?>> getAll();
      
      Future<void> insert(${_toUpperCamelCase(name)} $name);
      
      Future<void> update(${_toUpperCamelCase(name)} $name);
      
      Future<void> delete(int id);
      
    }
  ''');
    print('Repository and RepositoryImpl created successfully');
  }
}

createPage(String name) async {
  String fileName = 'lib/ui/pages/${name}_page.dart';
  File file = File(fileName);

  if (await file.exists()) {
    print('${fileName} Already exits! creation canceled');
  } else {
    String upperCamelCaseName = _toUpperCamelCase(name);

    file.writeAsStringSync('''
      import 'package:flutter/material.dart';
            
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
}

createEntity(String name) async {
  String fileName = 'lib/domain/entities/${name}_entity.dart';
  File file = File(fileName);

  if (await file.exists()) {
    print('${fileName} Already exits! creation canceled');
  } else {
    String upperCamelCaseName = _toUpperCamelCase(name);

    file.writeAsStringSync('''
                
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
}

void forHelp() {
  print('''
  Usage: dart ms-generator.dart <type> <name>.
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
