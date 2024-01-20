# POE_script
Set of functions for nice gameplay experience in poe.

## Requirements:
AutoHotkey v1.1.34.04

## Interface with functionality:
<p align="center">
  <img src="imgs/functional.png" width="750" title="Functional">
</p>

## Todo:
- UI
  - Сделать гибкую настройку для wide/fullscreen режимов, чтобы лишь переключением радиокнопки все подтягивалось.
  - General
    - Screen mode
      - Уточнения по выбору
    - Character state
      - Уточнить с чем есть связь (Heal() например)
  - Rollers
    - Utils
      - CardOpener
        - Добавить тип, что шаг при открытии высчитывается с помощью MakeInvColorMap, по этому нужно его применить.
      - MakeInvColorMap
        - Hotkey edit
        - Checkbox
        - Edit field, just for.
- Functions:
  - LootOneItem: Допилить логику LootBigRegion() чтобы лутать было удобнее
- Перенос и сохранение всех координат (файла settings.ini) при переключении режима экрана default/wide?
  Если default то читать/писать settings.ini если wide то settings_wide.ini.