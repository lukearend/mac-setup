Keyboard setup
==============

This document describes my keyboard setup and mappings.

Hardware mappings
-----------------

These are my hardware mappings for the Koolertron split mechanical keyboard. Several notes:

- Koolertron configuration can apparently only be run on bare-metal windows (I tried various virtualization and emulation approaches for days to no avail).
- Do not use Fn1 in Koolertron remapping software. Mac interprets this as F1 or screen brightness down. Fn2 has no effect on Mac so can be used for 3-layer mapping. However, I decided not to go with 3-layer mapping after all. It would have required a mapping key for each keyboard and they could be in different states. Thus I decided to do layering using complex rules in Karabiner at the software level.
- "Key map" and "LED" are special keys which do not send signals to the host. LED toggles keyboard backlights on/off, and Key map cycles through the four different layouts. This is done by having "Key map" change to Profile 1 when in Profile 0, change to Profile 2 when in Profile 1, etc.

###### Default layout:

The default layout is motivated by the following principles:

- Should deviate from a standard 65%, qwerty keyboard layout only with substantial justification.
    - The valuable Caps lock position (left of A) has been replaced with the vastly more commonly used Esc button.
    - Del (or Backspace) is placed quite badly on the standard keyboard. It is used **all the time** yet located at the right extreme in the distant R2. Thus we move Del to the conveniently located free key to the left of N. (In software remappings we will also introduce a Del shortcut which departs from the homerow even less).
    - Caps lock should be kept, yet is so rarely used that we relocate it to where Backspace used to be.

- Must furnish, in the absence of software mappings, all keys present on a standard keyboard. This includes:
    - standard symbols and alphanumerics
    - F1-12 keys
    - modifiers: Fn, Ctrl, Opt, Cmd, Shift
    - Caps lock, Tab and Esc

- Should thereafter maximize mapping flexibility:
    - Systematically enumerate freely remappable keys
    - No two keys mapped to the same key code
        - Maximizes number of unique outputs
        - Enforces independence of each key from all others

- LED control in uppermost extreme corners. Easy to remember; also, they're really just used when sitting down at or leaving the keyboard.

```
+-----+-----+-----+-----+-----+-----+-----+-----+         +-----+-----+-----+-----+-----+-----+-----+-----+
| LED | F1  | F2  | F3  | F4  | F5  | Num | Num |         | F6  | F7  | F8  | F9  | F10 | F11 | F12 | LED |
| (L) |     |     |     |     |     | 0   | 1   |         |     |     |     |     |     |     |     | (R) |
+-----+-----+-----+-----+-----+-----+-----+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+-----+--+
| ` ~ | 1 ! | 2 @ | 3 # | 4 $ | 5 % | Num | Num |      | 6 ^ | 7 & | 8 * | 9 ( | 0 ) | - _ | = + | Del       |
|     |     |     |     |     |     | 2   | 3   |      |     |     |     |     |     |     |     |           |
+-----+--+--+--+--+--+--+--+--+--+--+--+--+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--------+
| Tab    | Q   | W   | E   | R   | T   | Num    |         | Y   | U   | I   | O   | P   | [ { | } ] | \ |    |
|        |     |     |     |     |     | 4      |         |     |     |     |     |     |     |     |        |
+--------++----++----++----++----++----++-----+-+         ++----++----++----++----++----++----++----+--------+
| Esc     | A   | S   | D   | F   | G   | Num |            | H   | J   | K   | L   | ; : | ' " | Enter       |
|         |     |     |     |     |     | 5   |            |     |     |     |     |     |     |             |
+---------+--+--+--+--+--+--+--+--+--+--+--+--+--+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift (L)  | Z   | X   | C   | V   | B   | Num |      | Num | N   | M   | , < | . > | / ? | Shift (R)      |
|            |     |     |     |     |     | 6   |      | 9   |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+------+---+
| Num  | Ctrl | Opt  | Cmd  | Num          | Key |      | Space     | Cmd | ←   | ↓   | ↑   | →   | Key  |
| 7    | (L)  |      | (L)  | 8            | map |      |           | (R) |     |     |     |     | map  |
+------+------+------+------+--------------+-----+      +-----------+-----+-----+-----+-----+-----+------+
```

###### Layouts 1/2/3

These layouts are be identical and correspond as closely as possible to a completely ordinary keyboard. It's always good to have them there in case we need to fall back to the basics.

```
+-----+-----+-----+-----+-----+-----+-----+-----+         +-----+-----+-----+-----+-----+-----+-----+-----+
| Esc | F1  | F2  | F3  | F4  | F5  | F6  | F7  |         | F6  | F7  | F8  | F9  | F10 | F11 | F12 | LED |
|     |     |     |     |     |     |     |     |         |     |     |     |     |     |     |     | (R) |
+-----+-----+-----+-----+-----+-----+-----+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+-----+--+
| ` ~ | 1 ! | 2 @ | 3 # | 4 $ | 5 % | 6 ^ | 7 & |      | 6 ^ | 7 & | 8 * | 9 ( | 0 ) | - _ | = + | Del       |
|     |     |     |     |     |     |     |     |      |     |     |     |     |     |     |     |           |
+-----+--+--+--+--+--+--+--+--+--+--+--+--+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--------+
| Tab    | Q   | W   | E   | R   | T   | Y      |         | Y   | U   | I   | O   | P   | [ { | } ] | \ |    |
|        |     |     |     |     |     |        |         |     |     |     |     |     |     |     |        |
+--------++----++----++----++----++----++-----+-+         ++----++----++----++----++----++----++----+--------+
| Caps    | A   | S   | D   | F   | G   | H   |            | H   | J   | K   | L   | ; : | ' " | Enter       |
| lock    |     |     |     |     |     |     |            |     |     |     |     |     |     |             |
+---------+--+--+--+--+--+--+--+--+--+--+--+--+--+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift (L)  | Z   | X   | C   | V   | B   | N   |      | B   | N   | M   | , < | . > | / ? | Shift (R)      |
|            |     |     |     |     |     |     |      |     |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+------+---+
| LED  | Ctrl | Opt  | Cmd  | Space        | Key |      | Space     | Cmd | ←   | ↓   | ↑   | →   | Key  |
|      | (L)  |      | (L)  |              | map |      |           | (R) |     |     |     |     | map  |
+------+------+------+------+--------------+-----+      +-----------+-----+-----+-----+-----+-----+------+
```

Software mappings
-----------------

The remapping is motivated by the use of a "super" key, almost like a second shift, which brings all symbols commonly used for programming as close to the home row as possible. After learning this layout, one should be able to make full use of the keyboard without picking up or readjusting the wrist at all -- it is meant to be maximally lazy. These remappings are achieved by modifying the complex remappings in the `karabiner.json` configuration file.

The default keyboard layout after software remapping is shown below. This is meant to be pretty close to the standard qwerty keyboard.

```
+-----+-----+-----+-----+-----+-----+-----+-----+         +-----+-----+-----+-----+-----+-----+-----+-----+
| LED | F1  | F2  | F3  | F4  | F5  | F6  | F7  |         | F6  | F7  | F8  | F9  | F10 | F11 | F12 | LED |
| (L) |     |     |     |     |     |     |     |         |     |     |     |     |     |     |     | (R) |
+-----+-----+-----+-----+-----+-----+-----+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+-----+--+
| ` ~ | 1 ! | 2 @ | 3 # | 4 $ | 5 % | 6 ^ | 7 & |      | 6 ^ | 7 & | 8 * | 9 ( | 0 ) | - _ | = + | Del       |
|     |     |     |     |     |     |     |     |      |     |     |     |     |     |     |     |           |
+-----+--+--+--+--+--+--+--+--+--+--+--+--+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--------+
| Tab    | Q   | W   | E   | R   | T   | Cycle  |         | Y   | U   | I   | O   | P   | [ { | } ] | \ |    |
|        |     |     |     |     |     | window |         |     |     |     |     |     |     |     |        |
+--------++----++----++----++----++----++-----+-+         ++----++----++----++----++----++----++----+--------+
| Esc/    | A   | S   | D   | F   | G   | Prev|            | H   | J   | K   | L   | ; : | ' " | Enter       |
| Ctrl    |     |     |     |     |     | app |            |     |     |     |     |     |     |             |
+---------+--+--+--+--+--+--+--+--+--+--+--+--+--+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift      | Z   | X   | C   | V   | B   | Del |      | _   | N   | M   | , < | . > | / ? | Shift          |
|            |     |     |     |     |     | fwd |      |     |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+------+---+
| Fn   | Ctrl | Opt  | Cmd  | Space        | Key |      | Space     |Cmd/ | ←   | ↓   | ↑   | →   | Key  |
|      |      |      |      |              | map |      |           |Shift|     |     |     |     | map  |
+------+------+------+------+--------------+-----+      +-----------+-----+-----+-----+-----+-----+------+
```

When the super key is held down, the keyboard changes to the below. This is meant to be maximally convenient (close to the home row) for programming.

```
+-----+-----+-----+-----+-----+-----+-----+-----+         +-----+-----+-----+-----+-----+-----+-----+-----+
| LED | F1  | F2  | F3  | F4  | F5  | F6  | F7  |         | F6  | F7  | F8  | F9  | F10 | F11 | F12 | LED |
| (L) |     |     |     |     |     |     |     |         |     |     |     |     |     |     |     | (R) |
+-----+-----+-----+-----+-----+-----+-----+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+-----+--+
| ` ~ | F1  | F2  | F3  | F4  | F5  | F6  | F7  |      | F6  | F7  | F8  | F9  | F10 | F11 | F12 | Del       |
|     |     |     |     |     |     |     |     |      |     |     |     |     |     |     |     |           |
+-----+--+--+--+--+--+--+--+--+--+--+--+--+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--------+
| ~      | !   | @   | #   | $   | %   | ^      |         | ^   | &   | *   | (   | )   | {   | }   | Caps   |
|        |     |     |     |     |     |        |         |     |     |     |     |     |     |     | lock   |
+--------++----++----++----++----++----++-----+-+         ++----++----++----++----++----++----++----+--------+
| Caps    | A   | S   | D   | F   | App | App |            | Tab |Enter| Del | Del | [   | ]   | Enter       |
| lock    |     |     |     |     | left|right|            |     |     |     | word|     |     |             |
+---------+--+--+--+--+--+--+--+--+--+--+--+--+--+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift      | Z   | X   | C   | V   |Space| Del |      | _   | +   | |   | -   | =   | \   | Shift          |
|            |     |     |     |     |     |     |      |     |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+------+---+
| Fn   | Ctrl | Opt  | Cmd  | Super        | Key |      | Space     |Cmd/ | ←   | ↓   | ↑   | →   | Key  |
|      |      |      |      | (if held)    | map |      |           |Shift|     |     |     |     | map  |
+------+------+------+------+--------------+-----+      +-----------+-----+-----+-----+-----+-----+------+
```

Window moving:

- move window to take up left/right half: escape + right command + h/l
- move window to next screen: escape + right command + j
- maximize window: escape + right command + k

Arrow keys:

- right command + h/j/k/l gives vim-style arrow keys

Text editing:

- tab: super + h
- enter: super + j
- delete: super + h
- delete word: super + l
- left-hand accessible space: super + b

Reach reduction:

- escape: caps lock on an ordinary keyboard
- control: combine escape with alphanumeric keys or symbols
- tick, numbers, parentheses and caps lock: hold super to shift to qwerty row (also shifts F keys row to number row)
- right shift: right command on ordinary keyboard (applies to left hand keys only)
- caps lock: super + caps lock on an ordinary keyboard
- minus/equals: super + comma/period
- underscore/plus: super + shift + comma/period
- brackets: super + semicolon/quote
- backslash: super + slash

Convenience:

- app switch left/right: super + g/previous app

###### Karabiner simple mappings:

Koolertron:

- keypad_0 -> f6
- keypad_1 -> f7
- keypad_2 -> 6
- keypad_3 -> 7
- keypad_6 -> delete_or_backspace
- keypad_7 -> fn

Built-in Apple keyboard:

- caps lock -> esc
- esc -> caps lock

###### Spectacle hotkey settings:

- Fullscreen: control+k
- Next display: control+j
- Left half: control+h
- Right half: control+l
- All other actions unmapped
