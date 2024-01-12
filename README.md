# POE_script
Set of functions for nice gameplay experience in poe.

## Requirements:
AutoHotkey v1.1.34.04

## Interface with functionality:
<p align="center">
  <img src="imgs/functional.png" width="750" title="Functional">
</p>

## Todo:
- Move d_hover.png in imgs/ and all other images.
- Add DoorSearcher() to GUI, improve it functional.
- Refactor DoDelirious() and decide do you need this fuctional or not.
- Create GUI section for choice currency type for AlchBindScourOnce(). Split vars `alch` and `bind` with AlchBindScourRolling()?

- UI
  - Сделать возможность задавать координаты для роллеров и хоткеи для роллеров
  - Разбить нагруженный интерфейс на табы
  - Сделать гибкую настройку для wide/fullscreen режимов, чтобы лишь переключением радиокнопки все подтягивалось.
- Файлы:
  - Переименовать POE_script.ahk -> main.ahk
  - Убрать лишние (deliriun_afk.ahk, KeyHooker.ahk ->key_hooker.ahk)
  - Вынести глабальные переменные в отдельный файл
  - Utils
  - Toggles отделить тогглеры и ф-ции
  - Вынести биндинг хоткеев к лейблам в отдельный файл
- Убрать ненужный код и почистить отступы/комментарии
- Добавить комментарии для неочевидных ф-ций