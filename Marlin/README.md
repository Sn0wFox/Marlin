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
    open .pio\build\STM32F103RET6_creality
    ```
3. Load the .bin in the SD card only, put it in, plug in... voilà.

## Dev

* All commits are prefixed with `snfx:`.
* All Changes are annotated with a comment `// @snfx [description]`. They include:
  * `Configuration.h`
  * ~~Configuration_adv.h~~ (not for now)
  * some cpp files, such as `src/lcd/menu/menu_advanced.cpp`

### Upgrade firmware

Either rebase is easy enough and we go for it,
or the main code changed too much so the easiest way is just to search for `@snfx` comments
and re-apply the changes on top of the new branch.
