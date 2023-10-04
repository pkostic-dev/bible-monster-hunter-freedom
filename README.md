# Monster Hunter Freedom Bible

## About

An app that aims to make easily accessible all data concerning the Monster Hunter Freedom game for the PSP.
This app was made to practice GDScript in Godot 4, notably the use of custom resources and the use of Control nodes.
Custom resources are used to represent the data from the game. The Control nodes are used to represent this data visually.

## Files

### Folders

- data : Data from the game, including icons. (WIP)
	- armor : Armor data, split into armor types (blademaster or gunner)
	- icons : Icons used to represent items, monsters, and attributes.
	- location : Various locations throughout the game, used mainly to fill the information for other resources.
	- monster : Monster data, split into big and small monsters.
	- quest : Quest data.
	- weapon : Weapon data, split into weapon types.
- font : Contains the font Roboto, which closely resembles the PSP font.
- nodule : Scenes that visually represent data. (WIP)
- raw_data : Raw data from the game collected from various sources, including manually writing them by playing the game. (WIP)
- resource : Custom resources to represent data from the game.
	- Some resources are to be used directly in the editor (e.g. ElementData, StatusData, AmmoData etc.).
	- Other resources can be created through the editor and saved to be reused in other resources (e.g. LocationData, ItemData, MonsterData etc.).
- scene : Scenes such as app menus and other screens.
- script : Various scripts, including singletons.
- class : DEPRECATED.

#### Deprecated

The files inside the class folder are deprecated because I decided to switch from custom classes to 
custom resources, which are way more appropriate for storing data.

### Singletons

- Utility : Functions used to process data or manipulate the scene tree.
- Colors : Contains colors used in the game to color the item icons.
- Scenes : Contains a list of app screens.

### Architecture

The architecutre.txt file explains how the classes/resources are to be structured. (WIP)

## How to contribute

You can contribute to the completion of this app if you wish. The best way to do so is to create the custom resources for the various weapons, armor, quests, monsters etc.

### Steps

1. Download Godot Engine v4.2.dev4.official [549fcce5f].
2. Fork this repository and open it in Godot.
3. Add the missing data by using the custom resources :
	1. Check if the data has already been added by somebody else in the data folder.
	2. Create the appropriate resource using the custom resources found in the resource folder.
	3. Fill in the information in the editor with the inspector.
	4. Save the resource and add it to the appropriate list. (WIP)
	5. Check if the resource has been properly added by running the app. (WIP)
	6. Push request.
