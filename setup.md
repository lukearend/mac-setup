Manual installations
--------------------

- import filesystem
- install Alfred
- install Audio Hijack
- install Bitwarden 
- install Brave
- install Chrome
- install Docker
- install Discord
- install ExpressVPN
- install git/gh
- install Google Drive
- install Hex Fiend 
- install iTerm2
- install Karabiner-Elements
- install Logic Pro X
- install MainStage
- install Spectacle
- install Spotify
- install Sublime Text
- install Slack
- install UTM (the emulator)
- install Virtualbox
- install VLC
- install zoom.us
- setup Filevault

System preferences
------------------

- General
    - Appearance: Dark
    - Accent/Hightlight color: Graphite

- Desktop & Screen Saver -> set wallpaper to wallpaper.png

- Dock & Menu Bar
    - Size: almost smallest
    - Magnification: no magnification
    - Position on screen: Bottom

- Mission Control -> Hot Corners...
    - top left: (with cmd) Put Display to Sleep
    - bottom left: Mission Control
    - bottom right: Desktop

- Sound -> uncheck 'Play user interface sound effects'

- Keyboard 
    - Keyboard
        - Touch Bar shows Expanded Control Strip
        - Customize Control Strip...
            - set fourth position to desktop reveal instead of launchpad
        - uncheck "Use F1, F2, etc. as standard function keys on external keyboards"
    - Shortcuts
        - Launchpad & Dock
            - uncheck 'Show Launchpad' (clear F11 for JetBrains to use)
        - Mission Control
            - uncheck all except 'Show Desktop', 'Application windows'
            - set 'Show Desktop' to F4
            - at bottom, check 'Use keyboard navigation to move focus between controls'
        - Spotlight
            - uncheck 'Show Spotlight search'
        - check 'Use keyboard navigation to move focus between controls'

Alfred
------

- General -> System hotkey: cmd+space
    - ensure cmd+space is not already bound elsewhere on the system [see here](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
- Appearance -> Alfred Dark

Spectacle
---------

Unbind all actions except the following mappings: 

- Fullscreen: ctrl+k
- Left half: ctrl+h
- Right half: ctrl+l
- Next Display: ctrl+j

Iterm
-----

- Appearance -> Theme -> set to Dark
- Appearance -> Tabs bar -> Top
- set keybindings:
    - previous tab:   cmd+ctrt+left arrow
    - next tab:       cmd+ctrt+right arrow
    - move tab left:  cmd+opt+ctrl+left arrow
    - move tab right: cmd+opt+ctrl+right arrow

Sublime Text
------------

Install packages:

- Monokai++
- MoveTab
- NeoVintageous
- Origami
- Package Control
- Pretty JSON
- SFTP
- SublimeLinter
- WordCount

Menumeters
----------

Setup preferences according to screenshots in `menumeters` directory.

JetBrains
---------

Install plugins Vim Emulation and TabMover. Remap TabMover move tab left/move tab right to ctrl+opt+cmd+left/right arrow.
