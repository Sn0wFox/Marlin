# snfx-ddx

Piece of doc for custom config.

## Build

1. Install [platform.io](https://platformio.org):
    ```shell
    brew install platformio
    ```
2. Compile the firmware:
    ```shell
    pio run
    open .pio/build/STM32F103RE_creality
    ```
3. Load the .bin in the SD card only, put it in, plug in... voilà.

## Dev

* All commits are prefixed with `snfx:`.
* All Changes are annotated with a comment `// @snfx [description]`. They include:
  * `Configuration.h`
  * `Configuration_adv.h` (for adjustments and board specific settings)
  * some cpp files, such as `src/lcd/menu/menu_advanced.cpp`
  * `platformio.ini` (for default compilation settings)

⚠️ You should take a look at the default settings (use the correct branch):
* [basic](https://github.com/MarlinFirmware/Configurations/blob/import-2.1.x/config/examples/Creality/Ender-5%20Pro/CrealityV427/Configuration.h)
* [advanced](https://github.com/MarlinFirmware/Configurations/blob/import-2.1.x/config/examples/Creality/Ender-5%20Pro/CrealityV427/Configuration_adv.h)

and compare them with the current ones. You can't just start with the default ones because they are not correctly up-to-date.

### Upgrade firmware

Either rebase is easy enough and we go for it,
or the main code changed too much so the easiest way is just to search for `@snfx` comments
and re-apply the changes on top of the new branch.

## Bed leveling

There is an issue with the bed leveling feature.

Basically, something by default in the firmware is too high, causing the moves to the mesh points
to break the Y stepper motor.

It's either jerk or acceleration, but:
* I don't use classic jerk, just junction deviation and defaults are non-existent
* the acceleration is already set at 1200mm/sˆ2, which is proven to work during prints

So yeah. I don't know, but I have a fix. Just run the file `pre-level.gcode` first
and that will do it.

As a bonus, turns out:
- G26 after doesn't work, so will have to use a custom test gcode to test it
- pre-heating before bed leveling just doesn't happen (previous gcode also fixes that)

Bed leveling with a 0.1mm Feeler gauge after rough tramming (visual mostly)
gives the following matrix (`o` are the bed clips):

```text
                        x ← Ø
                   o        ↓
                            y
o   125 200 225 200 150
    100 150 200 200 175   o
    100 150 200 175 175
o    50 125 200 175 150
    -25  25  75 125  75

       o              o
```
