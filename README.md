# EDOPro by Project Ignis
All assets for the game, except card images.

## Configuration
`config/system.conf` handles most of the configurations available in the game.
Configurations listed as "boolean" accept either 0 for 'disabled' or 1 for 'enabled'.
Only options not directly configurable in-game are listed here.


| Name | Description and usage | Usage |
|------------ | -------------| --------|
|use_d3d |  directx's usage | boolean|
|use_vsync  | vsync's usage for more accurate fps capping according to the refresh rate of the monitor. If set, the max_fps option will be ignored | boolean
|max_fps | limits the framerate  | integer, 0=unlimited, 60=default|
|antialias | makes sharp/pixelated edges softer, but requires more performance  (more details in Customization) | integer|
|errorlog | how script errors are displayed | integer, 0=disabled, 1=in game message, 2=writes to error.log file, 3=both in game messages and error.log
|textfont | path for the font used for texts and its size | example: *fonts/simhei.ttf 14*|
|numfont | path for the font used for numbers | example: *fonts/arialbd.ttf*|
|dpi_scale | the scale currently applied | a rational value|

## Shortcuts available in the client

Abbreviation | Corresponding Key
------------ | -------------
LMB | Left Mouse Button
RMB | Right Mouse Button
MMB | Middle Mouse Button

### General:
* ESC: Minimizes the window when full screen
* F11: Toggling Fullscreen Mode
* F12: Captures a screenshot
### Deck Edit:
* RMB: Adds/removes a card from the deck
* MMB: Adds another copy of a card to the deck or side deck
* Shift+RMB or Hold LMB then click RMB: Adds a card to the side deck
### Duel:
* Hold A or Hold LMB: Lets the system stop at every timing.
* Hold S or Hold RMB: Lets the system skip every timing.
* Hold D: Lets the system stop at available timing.
* F1-F4: Shows the cards in your GY, Banished Zone, Extra Deck, Xyz Materials.
* F5-F8: Shows the cards in your opponent's GY, Banished Zone, Extra Deck, Xyz Materials.

## Searching functions
* `string`:
	returns all cards that have `string` in their name OR in the card text.
	Example: `Hero`
* `@string`
	returns all cards that have `string` in their name only, which ignores the card text.
	Example: `@Hero`
* `$string`
	returns all cards that belong to the `string`  archetype.
	Example: `$Heroic`
* `string1+string2`
	returns all cards that have `string1` or `string2` in their name/text.
	Example: `Trickstar+Bounzer`
	
You can also combine those functions. Example: `$blue-eyes+$buster blader` returns all cards that belong to either the `Blue-Eyes` archetype or the `Buster Blader` archetype

## Customization

**antialias:** set in the `sytem.conf` file, specifies if the device should use fullscreen anti aliasing.
Makes sharp/pixelated edges softer, but requires more performance.
Also, 2D elements might look blurred with this switched on. Rendering results depend on the hardware available, and the program might look different on different hardware with this
The value is the maximal antialiasing factor requested for the device. The creation method will automatically try smaller values if no window can be created with the given value.
Default value: 0 - disabled.

Change up your **textures**, **sounds** and/or **skin** folder!

### Background and other visual elements:
Editable by changing the contents of the **textures** folder. PNG and JPG are supported with those extensions only. PNG files with the same name will be preferentially loaded first; JPG extension support is only kept for legacy purposes and is highly discouraged.
* bg: background used during a duel
* bg_deck: background used while in Deck Edit
* bg_menu: background used in the other screens
* cover: the back of your cards
* cover2: the back of your opponent's cards

### Skins:
Editable by addings subfolders to **skin**, in the main Ygopro folder. For each folder, provide an unique `skin.xml` file, with the changes you want.
The skin can be changed in the settings. For instruction on the supported field and their effects, see README in `skin`. 

### Audio:
See README in `sound`.

## Updates
`config/configs.json`

### Parameters:

#### repos (array)
* url: required, the complete url of the repository to check for updates.
* repo_path: optional, the subdirectory in the client's directory where the contents will be saved. If not provided, the folder will be created in the expansions folder and will have the repository's name.
* data_path: optional, the folder where the databases and the strings will be loaded from in the repository. If not provided, it will load from the main folder of the repository.
* script_path: optional, the folder where the scripts will be loaded from in the repository. If not provided, it will load from the script folder of the repository.
* pics_path: optional, the folder where the pics will be loaded from in the repository. If not provided, it will load from the pics folder of the repository.
* should_update: true/false, optional, if the client will download the contents of the repository. If the repository is missing, it will still be downloaded only for the first time. If not provided, it will be set to true.
* should_read: true/false, if set to false the game will ignore that repository. If not provided, it will be set to true.

#### pics (urls)
* url: the complete url of the repository to check for updates. The url should have a `{}` on it, that will be replaced by the client with the card's id.
* type: pic/field, if it's either a repository for card pictures or if it is for field spell's art.


## Changes from YGOPro Percy 1.034 Links Beta to EDOPro by Project Ignis

### TEMPORARY:
* cdb entries for official cards merged into the main cdb:
	* fixmisc
	* fixot
	* fixstr
	* fixsetcode
	* official
* Removed Dark Magician 46986420

#### New TCG/OCG and anime cards by:

* aht
* AlphaKretin
* andré
* Cybercatman
* edo9300
* Eerie Code
* Hatter
* Hel
* Larry126
* Logical Nonsense
* Naim
* pyrQ

### Client

* Localhost AI added with up to four bots per duel in the first four player slots.
	* Uses custom WindBot Ignite
	* Bots incompatible with the current Master Rule are not displayed

* Added a basic hand test mode accessible in deck edit to play out a combo via a puzzle.

* Replaced old replay recording system:
	* current system is now unaffected by script changes from when the replay was recorded to when it is played.
	* kept compatibility with the old replay system.
		* old replay mode plays the replay while running the scripts. Use this if you are debugging a card.
	* replays are still subjected to changed in the database entry for a card.

* Added the option to export the decks used in a replay.
	* decks with be stored in the default deck files and contain the name of the players in the replay.
	
* Updated handling for live updates:
	* repositories can now be connected, disconnected, enabled or disabled via json file, in the main folder.
	* different repositories now display their Update Logs separately.

* Added an option to rename a deck in Deck Edit, without the user needing to edit the file directly
	* added a mechanism to prevent the user from using characters not allowed in file names.

* Added a "Quick Animation" option

* Added the following new settings:
	* indepeendent volume controls for music and sound effects.
	* hide/show archetype names.
	* hide passcodes and scopes. Passcodes are the unique number each card has. Scopes are the region where the card is available and/or its origin.
	* hide FPS.
	* enable fullscreen.
	* fit the background.
	* accurate resize for backgrounds.

* Added shortcut for in game fullscreen toggle [F11]

* Added shortcut for in game acess to the additiona settings [CTRL + O]

* Updated music and sounds options:
	* added "chants" support.
	* more details available in the txt file in the "sounds" folder.
	* music and sound volume controls separated

* Updated skins handling.
	* 10 sample skins and a template are provided.
	* skins can now be applied with the game running, without restarting.
	* skins will also support a `textures` folder to make those itens more customizable.
	* more details available in the README in your `skin` folder. 

* Added option to set maximum FPS in the configuration file.

* Added back automatic download of arts for Field Spell cards.

* Changed "Show anime cards" option to "Show unofficial cards", as other types of cards are present.

* "Watch Replay" menu now reads subdirectories in the `replay` folder.

* "Puzzle Mode" menu now reads subdirectories in the `puzzle folder`

* "single" folder renamed to "puzzle"
	* updated puzzles that were unsolvable to use pre-errata cards.
	
* Forbidden/Limited lists  now are kept in the `/lflists` directory:
	* multiple files are supported, each containing any number of lists.
	* Forbidden/Limited lists now will be read from a `lflists` folder inside of any repository connected.

* Forbidden/Limited lists now can be done by whitelisting:
	* adding `$whitelist` to a list will automatically ban all the entries not set in that list
	
* Aliasing is now disabled in deck edit.

* Added support for **GOAT Format**:
	* added 2005.4 Forbidden/Limited List, credits to EerieCode, Tungnon and Naim for preparing the file.

* Fixed the dimensions of `field.png`, the picture used for MR1 and MR2 duels. Credits to GK#3620, on Discord.

* Added wildchar support.
	* @string: returns all cards that have `string` in their name only, ignoring the card text. Example: `@Hero`
	* $string: returns all cards that belong to the `string` archetype. Example: `$Heroic`
	* string1+string2: returns all cards that have `string1` or `string2` in their name/text. Example: `Trickstar+Bounzer`
You can also combine those functions.
Example: `$blue-eyes+$buster blader` returns all cards that belong to eiher the "Blue-Eyes" archetype or the "Buster Blader" archetype

* Added asynchronous loading system for card images.

* The last banlist used is now remembered after leaving deck edit, a duel, or the client.

* macOS
	* Cmd+Q quits the application. "Quit" menu item added to app menu.
	* Cmd+N opens a new instance. "New Window" menu item added to app and dock menus.
	* Ctrl+Cmd+F toggles fullscreen windowed mode. If there's no system bind for F11 that will work as well. "Toggle Full Screen" menu item added to app and dock menus. This is remembered on app restart like on Windows and Linux.
		* Known bug: invoking the binary from the Terminal directly (./EDOPro.app/Contents/MacOS/EDOPro) will never start the game in fullscreen on macOS Mojave, but no user should be starting the game this way anyway.
	* Shift+Right Click to add to side deck in Deck Edit now works like on Windows and Linux

* Added Discord Integration via Rich Presence
	* Features:
		* Your status will be set to "Playing Ygopro", with the elapsed time included.
		Actions that will have description:
			* Dueling
			* In menu
			* Playing a Puzzle
			* Watching a Replay
			* Editing a deck
		* You can invite people to join your room. To do it: host a room, then in the Discord PC application you can create an invite in the input text bar.
		* Similarly, you can join a room through the invite created. If Ygopro/Edopro is closed, clicking in the invite will launch the application

* Scripts now load from one subdirectory level in the script folder only.

* Prereleases are supported. Use the 0x100 OT bit.
	* Prereleases appear by default in deck edit and can be filtered specifically for
	* Prereleases can be permitted in duels in addition to "OCG/TCG" mode.
		* Setting the Allowed Card list to TCG allows only cards that are released in TCG.
		* Setting the Allowed Card list to OCG allows only cards that are released in OCG.
		* Setting the Allowed Card list to TCG/OCG allows only cards that are released both in TCG and OCG but not pre-releases.
		* Setting the Allowed Card list to Pre-release allows only cards that are released both in TCG and OCG.
		* Setting the Allowed Card list to Anything goes allows any cards that are released in either TCG or OCG.
	
	* All card scopes are now listed in card search with the exception of "OCG/TCG", using sysstrings

* Updated many strings called with dialogue boxes and activation prompts used by the client.
	* Update incorrect strings called in the Damage Step
	* All the strings used in the client are now controlled by the `strings.conf` file, being editable, which allows translations for all these elements.

* Added support for translation for system strings.
	* inside the `config/languages` folder, add a folder for your language and add a `strings.conf` file there, with the strings translated to your desired language.
	* Credits for the current translations:
		french: Hel
		italian: edo9300
		portuguese: Naim

* Added support for skills and characters

* Added support for an arbitrary number of cards in a deck (main, side, extra.)
	* requires editing the deck file, might be tied with the server's 
	* the deck displayed in Deck Edit will no longer display a maximum of 60 cards in the main deck.

	
### Core, Scripts and functions and other

#### OCGCORE: updated from 1.034 standard to edo9300's 6.0

* Updated mandatory trigger effects handling.
	
* Added support for **Flash Charge Dragon**:
	* updated old scripts of cards with effects that Summon or put themselves on the opponent's field.

* Added support for **Mischief of the Time Goddess**

* Updated status of the following bugs:
	* fixed a bug with "Number 67: Pair-a-Dice Smasher" where it wans't changing result of dice to outside dice allowed values.
	* changed AssumeProperty to allow cards having more than 1 property (Race, ATK, ...) assumed at a time.
	* fixed interaction of "Chaos Hunter" and "Macro Cosmos". (remind to check all the script to remove unecessary things).
	* fixed "Formud Skipper" and "Zombie World" interactions.
	* fixed "Absolute Machine Angel Ritual" vs "Necrovalley" interaction.
	* fixed "Super Polymerization" vs "Chain Material" interaction.
	* fixed problems with accumulated Additional Normal Summon effects, like "Gem-Knight Seraphinite" and "Knightmare Goblin"
	* fixed a bug where "Vampire Sucker" would not be able to tribute more than 1 monster controlled by the opponent.
	* fixed a bug where "Servant of the Endymion" would be able to activate the effect once again even if "Ash Blossom & Joyous Spring" negated it.
	* fixed the bugs with incorrect interactions of "Fantastic Striborg" with "Degenerate Circuit" and "Macro Cosmos"
	* due to updates in segoc rules, the bug where two "Mythical Instutuion" could activate the effect in the same chain was fixed.
	* due to the changes on how mandatory trigger effects were handled, the bug with using the effect of "Heavymetalfoes Electrumite" while the player controlled 2 and 1 of those was negated was fixed.
	* fixed the incorrect damage evaluation for "Trickstar Lycoris" and "Trickstar Lightstage" vs "Preparation of rites" and similar cards.
	* fixed a bug related with being unable to get some properties with triggering location:
		* main interaction is "Doomking Balerdroch" vs an "Orcust" monster activating its effect in the GY while "Zombie World" was in play.
	* fixed a bug with "Partian Shot" and its interaction with "Timelord" or "Gladiator Beast" monsters.
	* fixed an incorrect evalution for the ATK of monster equipped with "Megamorph" and "Sword of Toxic Solitude" to match rulings.
	* fixed an incorrect evalution for the ATK of "The Wicked Avatar" copied by "Fake Hero" and/or "Phantom of Chaos".
	* fixed "Witchcrafter Genie" being able to target a Continuous Spell to apply the effects, even if the card did not have an applicable effect.
	* fixed a bug where "Evenly Matched" would be negated by "Necrovalley" if any of the cards to be banished left the field before the resolution. Same with "Topolofic Trishbaena"
	* fixed the interaction of "Gilford the Legend" with "Necrovalley".
	* updated cards that should be detected by "Dark Sacrifice".
	* fixed the bug with "Dark Sanctuary" being unable to special summon the Spirit Message card if it was activated in a higher chain link, e.g. Metaverse.
	* fixed the bug where it would be possible to stack the destruction replacement effects of "Six Samurai" monsters on the field with those with a similar effect in the GY.
	* fixed the incorrect interaction of "Ghost Belle & Haunted Mansion" with "The Prime Monarch".
	* fixed the incorrect interaction of "Ash Blossom & Joyous Spring" with "Magical Hats".
	* fixed the bug where "Absolute King Jack Back" would not be able to use the effect if "Set Rotation" was used.
	* fixed bugs with "Cynet Codec" and "Union Hangar" where they would not allow the user to target different monsters if they were summoned in the same chain, but in different chain links.
	* fixed the bugs of cards that negate the activation of a monster effect, then apply something else, if the monster left the field. Examples: Sollemn Strike, Debunk, Invoked Mechaba.
	* fixed the bug of "Abyss Playhouse - Fantastic Theater" negating the incorrect Chain Link if multiple monster effects were activated in the chain.
	* fixed the bug with "Gogogo Dexia & Aristeria" not triggering if "Utopic Unomatopoeia" was used as one of the materials.	
	* fixed the bug with "Droll & Lock Bird" triggering in the incorrect timing in the presence of "Mystic Mine".	
	* fixed the bug with "There Can Be Only One" vs a returning monster that would interact with its effect.	
	* fixed the bug with "Daigusto Spherez" and the damage inflicted if "Fragile Double-Edge Sword" was equipped.	
	* fixed the incorrect ATK evaluation fo "Gren Maju Dai Eza" vs "Black Rose Dragon".	

* Added `Duel.LinkSummon`, which removes the workarounds used for the "Unchained" monsters.

* Removed complex handling of Continuous Traps for when it is possible to activate the card AND its effect in the same chain link

* The following functions have been renamed:
	* `Card.IsLinkState` -> `Card.IsLinked`
	* `Card.IsExtraLinkState` -> `Card.IsExtraLinked` (this one also no longer requires the workarounds that were once used)
	* `Card.IsAttackable` -> `Card.CanAttack`
	* `Card.IsChainAttackable` -> `Card.CanChainAttack`

* Added suport to load other files from within a script (Duel.LoadScript)

* Puzzles can now display a message while in the puzzle selection screen, in the "Puzzle Mode" menu:

	* messages are added with the following syntax:
```lua
	--[[message
	insert the text here
	]]
```
* Added a "Puzzle Creator" puzzle.

