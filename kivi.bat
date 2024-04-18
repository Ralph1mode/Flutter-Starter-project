@echo off

if "%~1" == "usecase" goto choice1
if "%~1" == "repository" goto choice2
if "%~1" == "page" goto choice3


:choice1
 REM Nom du usecase
        set USECASE_NAME=%~2

        REM creer le fichier du usecase
        echo Creation du usecase : %USECASE_NAME%

        echo abstract class %USECASE_NAME%Usecase { >> lib\domain\usecases\%USECASE_NAME%_usecase.dart
        echo Future ^<%USECASE_NAME%Entity? ^> call(int %USECASE_NAME%Id^); >> lib\domain\usecases\%USECASE_NAME%_usecase.dart
        echo } >> lib\domain\usecases\%USECASE_NAME%_usecase.dart

        echo usecase creer avec succes

goto :eof



:choice2
 REM Nom du repository
        set REPOSITORY_NAME=%~2

        REM creer le repository
        echo Creation du repository : %REPOSITORY_NAME%

        echo abstract class %REPOSITORY_NAME%Repository { >> lib\domain\repositories\%REPOSITORY_NAME%_repository.dart
        echo    Future ^<%REPOSITORY_NAME%Entity?^> call(int %REPOSITORY_NAME%Id^); >> lib\domain\repositories\%REPOSITORY_NAME%_repository.dart
        echo } >> lib\domain\repositories\%REPOSITORY_NAME%_repository.dart

        REM creer le repositoryImpl

        echo import '../%REPOSITORY_NAME%_repository.dart'; >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo abstract class %REPOSITORY_NAME%RepositoryImpl implements %REPOSITORY_NAME%Repository{ >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo    final Get%REPOSITORY_NAME%UseCase get%REPOSITORY_NAME%UseCase; >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart

        echo    %REPOSITORY_NAME%RepositoryImpl({required this.get%REPOSITORY_NAME%UseCase}); >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart

        echo    @override >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo    Future ^<%REPOSITORY_NAME%Entity?^> get%REPOSITORY_NAME%r(int %REPOSITORY_NAME%Id) async { >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo        return await get%REPOSITORY_NAME%UseCase(%REPOSITORY_NAME%Id); >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo    } >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart
        echo } >> lib\domain\repositories\implementations\%REPOSITORY_NAME%_repository_impl.dart


        echo %REPOSITORY_NAME%Repository creer avec succes
        echo %REPOSITORY_NAME%RepositoryImpl creer avec succes

goto :eof

:choice3
 REM Nom du usecase
        set PAGE_NAME=%~2

        REM creer le fichier du usecase
        echo Creation de la page : %PAGE_NAME%

        echo import 'package:flutter/material.dart';>> lib\ui\pages\%PAGE_NAME%_page.dart

        echo class %PAGE_NAME.ToUpper%Page extends StatelessWidget {>> lib\ui\pages\%PAGE_NAME%_page.dart
        echo   const %PAGE_NAME.ToUpper()%Page({super.key});>> lib\ui\pages\%PAGE_NAME%_page.dart

        echo   @override>> lib\ui\pages\%PAGE_NAME%_page.dart
        echo   Widget build(BuildContext context) {>> lib\ui\pages\%PAGE_NAME%_page.dart
        echo     return const Placeholder();>> lib\ui\pages\%PAGE_NAME%_page.dart
        echo   }>> lib\ui\pages\%PAGE_NAME%_page.dart
        echo }>> lib\ui\pages\%PAGE_NAME%_page.dart

        echo page creer avec succes !

goto :eof