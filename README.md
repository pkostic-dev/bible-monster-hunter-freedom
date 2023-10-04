# Monster Hunter Freedom Bible

## About

An app that aims to make easily accessible all data concerning the Monster Hunter Freedom game for the PSP. This app is made for practicing GDScript in Godot 4.

## Folders

- class : Classes that represent data in the game (deprecated).
- data : Data from the game, including icons and custom resources with information.
- font : Contains the font Roboto, which closely resembles the PSP font.
- nodule : Scenes that visually represent data (to be updated).
- raw_data : Raw data from the game collected from various sources, including manually writing them by playing the game.
- resource : Custom resources to represent data from the game, some are to be used directly in the editor, others can be created through the editor and saved to be reused.
- scene : Scenes such as app menus and other screens.
- script : Scripts, including singletons.

### Singletons

- Utility : Functions used to process data or manipulate the scene tree.
- Colors : Contains colors used in the game to color the item icons.
- Scenes : Contains a list of app screens.

### Architecture

The architecutre.txt file explains how the classes/resources are to be structured. (WIP)
