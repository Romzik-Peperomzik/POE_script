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
  - General
    - How to use
    - Misc
    - Screen mode
      - Уточнения по выбору
  - Auto
    - Flasks
      - Set
      - Each
    - Auto Heal
    - Auto loot
    - Auto Logout
    - Portal
    - Abilty sequence
  - Rollers
    - All rollers
    - Добавить возможность выберать x, y и цвет для
      полоски которая подсвечивает предмет.
    - Больше кастом чат комманд?
- Файлы:
  - Почистить от комментов и пробельных символов
  - Split code to files
    - global_vars
    - toggles
    - utils
  - main.ahk
    - LootOneItem: Допилить логику LootBigRegion() чтобы лутать было удобнее
  - Актуализировать названия переменных
- Тесты:
  - Проверить могут ли одновременно работать автохил, автологаут и другие fn на таймерах.
