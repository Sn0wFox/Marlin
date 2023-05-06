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

⚠️ You should take a look at the default settings (use the correct branch):
* [basic](https://github.com/MarlinFirmware/Configurations/blob/import-2.1.x/config/examples/Creality/Ender-5%20Pro/CrealityV427/Configuration.h)
* [advanced](https://github.com/MarlinFirmware/Configurations/blob/import-2.1.x/config/examples/Creality/Ender-5%20Pro/CrealityV427/Configuration_adv.h)

and compare them with the current ones. You can't just start with the default ones because they are not correctly up-to-date.

### Upgrade firmware

Either rebase is easy enough and we go for it,
or the main code changed too much so the easiest way is just to search for `@snfx` comments
and re-apply the changes on top of the new branch.
