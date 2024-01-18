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
      - uneditable
      - editable
    - ^g::CtrlClickLoop()
    - F1::CustomChatCommand()
    - reloadNsave
    - Screen mode
      - Уточнения по выбору
    - Character state
  - Auto
    - Portal
    - Flasks
      - Set
      - Each
        - Кнопка которая включает таймеры для Each flask
    - Auto Heal
      - ^+F::UpdateHealTreshold()
    - Auto Logout
      - Delay
    - Auto loot  остановился тут
    - Abilty sequence
  - Rollers
    - Utils
      - CleanInventory
        - Hotkey edit
        - Авто настройка по x и y.
          - Добавляем коорд. первой ячейки, коорд. ячейки снизу и справа.
            Опираясь на эти ^ коорд. высчитываем коорд. остальных ячеек.
          - Либо добавляем коорд. верхних крайних слева и справа ячеек и тоже самое для нижних.
            И потом делим на 60 и 5 и высчитываем коорд. остальных ячеек.
        - Добавление координат ячеек которые нужно пропускать.
      - CardOpener
        - Hotkey edit
        - Авто настройка по x и y на примере CleanInventory^.
    - Rollers
      - Remove:
        - FuseJewellerClickLoop
          - Hotkey edit
          - Delay
          - Grab Fuse/Jeweller by coords, and start clicking item till it not highlited
        - AltChaosRolling
          - Hotkey edit
          - Grab Alt/Chaos by coords, and start clicking item till it not highlited
        - AlchBindScourRolling
        - Hotkey edit
        - Grab Alch/Bind by coords, and start clicking item till it not highlited
      - Currency rollers:
        - Разделить на click roller и scour roller.
        - Добавить поля ввода координат для: fuse, jeweller, chaos, chrom, alter, alch, bind, chance, scour.
          - fuse, jeweller, chaos, chrom, alter не нуждаются в пережимании.
          - alch, bind, chance, scour могут быть нажатия и выбор доп. валюты.
        - Два разных хоткея для click roller и scour roller.
        - Координаты прямоугольника где будет поиск подсвеченного пикселя.
        - Координаты итема куда будут кликать. Delay.
        - Тип как это работает и что обязателен regexp.
    - GwenRoller
      - Hotkey edit
      - Rectangle coords?
      - Roll key press
      - Delay
    - Искать цвет хайлайченого предмета в небольшом прямоугольнике. Добавить возможность выбирать x, y и цвет для
      полоски которая подсвечивает предмет?
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
