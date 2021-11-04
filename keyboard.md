keyboard setup
==============

A description of my keyboard setup.

Hardware mappings
-----------------

Koolertron split mechanical keyboard:

```
+-----+-----+-----+-----+-----+-----+-----+-----+         +-----+-----+-----+-----+-----+-----+-----+-----+
| LED | F1  | F2  | F3  | F4  | F5  | Num | Num |         | F6  | F7  | F8  | F9  | F10 | F11 | F12 | LED |
| (L) |     |     |     |     |     | 0   | 1   |         |     |     |     |     |     |     |     | (R) |
+-----+-----+-----+-----+-----+-----+-----+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+-----+---
| ` ~ | 1 ! | 2 @ | 3 # | 4 $ | 5 % | Num | Num |      | 6 ^ | 7 & | 8 * | 9 ( | 0 ) | - _ | = + | Caps lock |
|     |     |     |     |     |     | 2   | 3   |      |     |     |     |     |     |     |     |           |
+-----+--+--+--+--+--+--+--+--+--+--+--+--+-----+      +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--------+
| Tab    | Q   | W   | E   | R   | T   | Num    |         | Y   | U   | I   | O   | P   | [ { | } ] | \ |    |
|        |     |     |     |     |     | 4      |         |     |     |     |     |     |     |     |        |
+--------++----++----++----++----++----++------++         ++----++----++----++----++----++-----+--------------
| Esc     | A   | S   | D   | F   | G   | Num  |           | H   | J   | K   | L   | ; : | ' " | Return      |
|         |     |     |     |     |     | 5    |           |     |     |     |     |     |     |             |
----------+--+--+--+--+--+--+--+--+--+--+--+---+-+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift (L)  | Z   | X   | C   | V   | B   | Del |      | Del | N   | M   | , < | . > | / ? | Shift (R)      |
|            |     |     |     |     |     | fwd |      |     |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+----------+
| Del  | Ctrl | Opt  | Cmd  | Num          | Num |      | Space     | Cmd | ←   | ↓   | ↑   | →   | Ctrl |
|      | (L)  |      | (L)  | 6            | 7   |      |           | (R) |     |     |     |     | (R)  |
+------+------+------+------+--------------+-----+      +-----+-----+-----+-----+-----+-----+-----+------+
```

Note: do not use Fn1 in Koolertron remapping software. Mac interprets this as F1 or screen brightness down. Fn2 has no effect on Mac so can be used for 3-layer mapping.

Software mappings
-----------------

#### Karabiner complex mappings

Right command plus hjkl becomes left/down/up/right arrow keys, vim-style.

Right command plus semicolon becomes return key (avoids having to stretch pinky).

Escape, when combined with alphanumerics or brackets, becomes an alias to the control key. This avoids having to stretch left pinky down to hit left control.

Holding down the left space bar (keypad_6) shifts the top two rows of the keyboard one row down. This prevents one from having to stretch their fingers as much to reach upper rows. It also maps:

- h to delete
- j to return
- k to option+backspace (delete backwards until next whitespace)
- l to forward delete

Holding down the space bar also maps

Right command, when combined with left-hand alphanumerics, becomes an alias to the shift key. This prevents having to stretch the right pinky to reach the right shift key.

#### Karabiner simple mappings:

Koolertron:

- keypad_0 -> f6
- keypad_1 -> f7
- keypad_2 -> 6
- keypad_3 -> 7
- keypad_4 -> grave_accent_or_tilde
- keypad_5 -> tab
- keypad_7 -> fn

Built-in Apple keyboard:

- caps lock -> esc
- esc -> caps lock

#### Spectacle hotkey settings:

- Fullscreen: control+k
- Next display: control+j
- Left half: control+h
- Right half: control+l
- All other actions unmapped
