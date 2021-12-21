# snfx-ddx

```shell
.platformio\penv\Scripts\pio.exe run
explorer .pio\build\STM32F103RET6_creality
```

Then load the .bin in the SD card only, put it in, plug in... voilà.

To install [platform.io](https://platformio.org/):

```shell
pip install -U platformio
```

(tested with python 3.9.1 and pip 20.2.3).

All commits are prefixed with `snfx`.
All Changes are annotated with a comment `// @snfx [description]`. They include:
* Configuration.h
* ~~Configuration_adv.h~~ (not for now)
* some cpp files, such as `src/lcd/menu/menu_advanced.cpp`