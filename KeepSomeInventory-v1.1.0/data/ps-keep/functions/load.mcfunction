scoreboard objectives add ps-keep deathCount
execute store result score #keepInv ps-keep run gamerule keepInventory
execute if score #keepInv ps-keep matches 0 run tellraw @a ["", {"text": "Keep", "color": "#83150D"}, {"text": "Some", "color": "#248C88"}, {"text": "Inventory", "color": "#83150D"}, {"text": " changed the gamerule "}, {"text": "keepInventory", "color": "gold"}, {"text": " to "}, {"text": "true", "color": "red"}, {"text": "\n  "}, {"text": "-> this is necessary for the data pack to work", "color": "gray"}]
gamerule keepInventory true
execute store result score #respawn ps-keep run gamerule doImmediateRespawn
execute if score #respawn ps-keep matches 1 run tellraw @a ["", {"text": "Keep", "color": "#83150D"}, {"text": "Some", "color": "#248C88"}, {"text": "Inventory", "color": "#83150D"}, {"text": " changed the gamerule "}, {"text": "doImmediateRespawn", "color": "gold"}, {"text": " to "}, {"text": "false", "color": "red"}, {"text": "\n  "}, {"text": "-> this is necessary for the data pack to work", "color": "gray"}]
gamerule doImmediateRespawn false
scoreboard players set .2 ps-keep 2
scoreboard players set .5 ps-keep 5
scoreboard players set .6 ps-keep 6
scoreboard players set .9 ps-keep 9
scoreboard players set .-81 ps-keep -81
scoreboard players set .-325 ps-keep -325
scoreboard objectives add ps-keep.config dummy [{"text": "Keep Some Inventory", "color": "gold"}, {"text": " Config", "color": "red"}]
execute unless score item_despawn_offset[-32768_to_5999] ps-keep.config = item_despawn_offset[-32768_to_5999] ps-keep.config run scoreboard players set item_despawn_offset[-32768_to_5999] ps-keep.config -6000
execute unless score keep_experience[0|1] ps-keep.config = keep_experience[0|1] ps-keep.config run scoreboard players set keep_experience[0|1] ps-keep.config 0
execute unless score keep_items[0|1|2] ps-keep.config = keep_items[0|1|2] ps-keep.config run scoreboard players set keep_items[0|1|2] ps-keep.config 1
