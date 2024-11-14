### EN

Windows 11 Wallpaper Change Script  
**Author:** ThomasLap13  
**Link:** [https://github.com/ThomasLap13](https://github.com/ThomasLap13)  
**Date:** 14/11/2024  
**Version:** 1 - Tested on Windows 11 23H2/24H2  

---

### How to customize

To change the image that will be set as the Windows wallpaper, simply go to `.\sources\wallpaper` and replace the image with another one of the same name and file type `(.jpg)`.

---

### .\sources\script_wallpaper

The `script_wallpaper.ps1` file is the main file, which follows the different steps and calls the specific functions.  
Its role is to centralize the execution of other scripts without requiring direct programming.  
Other files starting with "script..." are derivatives of this initial file, each designed to execute specific functionalities.

---

### .\sources\inc

This folder contains all the specific scripts with the functions called in `script_wallpaper.ps1`.  
To create a new feature in a category other than the ones already present, simply create a "function_" file and call it in `script_wallpaper.ps1`.

---

### Additional Information

For any questions or further information, feel free to contact me:  
**ThomasLap13**, IT apprentice.

---
---

### FR

Script changement de fond ecran Windows 11  
**Auteur:** ThomasLap13  
**Lien:** [https://github.com/ThomasLap13](https://github.com/ThomasLap13)  
**Date:** 14/11/2024  
**Version:** 1 - Testé sur Windows 11 23H2/24H2  

---

### Comment customiser

Pour modifier l'image qui va etre définie comme fond ecran Windows, il suffit d'aller dans `.\sources\wallpaper` et replacer l'image par une autre avec le meme nom et le meme type de fichier `(.jpg)`

---

### .\sources\script_fond-ecran

Le fichier `script_fond-ecran.ps1` est le fichier principal, qui suit les différentes étapes et appelle les fonctions spécifiques.  
Son rôle est de centraliser l’exécution des autres scripts sans nécessiter de programmation directe.  
Les autres fichiers commençant par "script..." sont des dérivés de ce fichier initial, chacun conçu pour exécuter des fonctionnalités bien précises.

---

### .\sources\inc

Ce dossier contient tous les scripts spécifiques avec les fonctions appelées dans `script_fond-ecran.ps1`.  
Pour créer une nouvelle fonctionnalité dans une catégorie différente de celles déjà présentes, il suffit de créer un fichier "fonction_" et de l’appeler dans `script_fond-ecran.ps1`.

---

### Informations supplémentaires

Pour toute question ou information supplémentaire, n'hésitez pas à me contacter :  
**ThomasLap13**, apprenti informatique.
