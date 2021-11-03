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
| Tab    | Q   | W   | E   | R   | T   | Num    |         | Y   | U   | I   | O   | P   | Del | Del | \ |    |
|        |     |     |     |     |     | 4      |         |     |     |     |     |     |     | fwd |        |
+--------++----++----++----++----++----++------++         ++----++----++----++----++----++-----+--------------
| Esc     | A   | S   | D   | F   | G   | Num  |           | H   | J   | K   | L   | ; : | ' " | Return      |
|         |     |     |     |     |     | 5    |           |     |     |     |     |     |     |             |
----------+--+--+--+--+--+--+--+--+--+--+--+---+-+      +--+--+--+--+--+--+--+--+--+--+--+--+--+-------------+
| Shift (L)  | Z   | X   | C   | V   | B   | ] } |      | [ { | N   | M   | , < | . > | / ? | Shift (R)      |
|            |     |     |     |     |     |     |      |     |     |     |     |     |     |                |
+------+-----++----+-+---+--+--+-----+-----+-----+      +-----+-----+-----+-----+-----+-----+-----+----------+
| Del  | Ctrl | Opt  | Cmd  | Num          | Num |      | Space     | Cmd | ←   | ↓   | ↑   | →   | Ctrl |
|      | (L)  |      | (L)  | 6            | 7   |      |           | (R) |     |     |     |     | (R)  |
+------+------+------+------+--------------+-----+      +-----+-----+-----+-----+-----+-----+-----+------+
```

Note: do not use Fn1 in Koolertron remapping software. Mac interprets this as F1 or screen brightness down. Fn2 has no effect on Mac so can be used for 3-layer mapping.

Software mappings
-----------------

#### Karabiner complex mappings

Right command can be combined with hjkl for vim-style cursor navigation.

- right_command + hjkl -> left/down/up/right arrow keys

Escape, when combined with certain keys, becomes an alias to the control key. Escape is easier to reach with the left pinky than the left control key.

- escape as virtual modifier
- escape + c -> control + c (CLI interrupt)
- escape + e/y -> ctrl + e/y (vim line down/up)
- escape + r -> control + r (vim redo)
- escape + right_command + hjkl -> control + left/down/up/right arrow keys (Spectacle actions)

Right command, when combined with certain keys on the left side, becomes an alias to the shift key. Right command is easier to reach than the right shift key; it obviates the swivel of the wrist to press shift with the right pinky.

- right_command + a -> shift + a (vim end of line, insert mode)
- right_command + r -> shift + r (vim replace mode)
- right_command + t -> shift + t (vim skip until backwards)
- right_command + f -> shift + f (vim find in line backwards)
- right_command + x -> shift + x (vim delete backwards)
- right_command + g -> shift + g (vim go to)
- right_command + v -> shift + v (vim visual line)
- right_command + s -> shift + s (vim delete line and enter insert mode)

than right shift when holding shift for left-hand keys in vim commands like V (visual select), A (end of line, insert mode), G (go to); it obviates the rightward swivel of the wrist to press shift with the right pinky.

Holding keypad_6 shifts the top two rows of the keyboard one row down. This prevents one from having to stretch their fingers to reach two rows above the home row (unless to press F keys). If pressed alone acts as a regular space bar press.

- keypad_6 as a virtual modifier, space if pressed alone
- keypad_6 + \<tab\>qwert\<keypad_2\> -> \<grave accent\>1-6
- keypad_6 + 1-6 -> f1-f6
- keypad_6 + yuiop\<delete_or_backspace\>\<delete_forward\>/ -> 67890-=\<caps_lock\>
- keypad_6 + 67890-= -> f6-f12

#### Karabiner simple mappings:

Koolertron:

- keypad_0 -> f6
- keypad_1 -> f7
- keypad_2 -> 6
- keypad_3 -> 7
- keypad_4 -> y
- keypad_5 -> h
- keypad_7 -> fn

Built-in Apple keyboard:

- caps lock -> esc
- esc -> caps lock
