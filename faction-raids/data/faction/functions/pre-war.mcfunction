# Common to all raids
# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# war_bar-01 -   Red v. Blue   |   Blue v. Red
# war_bar-02 -   Red v. Green  |  Green v. Red
# war_bar-03 -   Red v. Yellow | Yellow v. Red
# war_bar-04 -  Blue v. Green  |  Green v. Blue
# war_bar-05 -  Blue v. Yellow | Yellow v. Blue
# war_bar-06 - Green v. Yellow | Yellow v. Green

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 name "  Red  >> Prepare for War! <<  Blue "
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 name "  Red  >> Prepare for War! << Green "
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 name "  Red  >> Prepare for War! << Yellow"
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 name " Blue  >> Prepare for War! << Green "
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 name " Blue  >> Prepare for War! << Yellow"
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 name " Green >> Prepare for War! << Yellow"

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 color purple
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 color purple
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 color purple
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 color purple
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 color purple
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 color purple

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 visible true
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 visible true
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 visible true
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 visible true
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 visible true
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 visible true

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 players @a
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 players @a
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 players @a
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 players @a
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 players @a
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 players @a

execute if score war_bar-01 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-01 max run scoreboard players get pre-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-02 max run scoreboard players get pre-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-03 max run scoreboard players get pre-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-04 max run scoreboard players get pre-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-05 max run scoreboard players get pre-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-06 max run scoreboard players get pre-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-01 value run scoreboard players get pre-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-02 value run scoreboard players get pre-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-03 value run scoreboard players get pre-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-04 value run scoreboard players get pre-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-05 value run scoreboard players get pre-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-06 value run scoreboard players get pre-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-01 factions.timer = pre-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-02 factions.timer = pre-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-03 factions.timer = pre-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-04 factions.timer = pre-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-05 factions.timer = pre-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-06 factions.timer = pre-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-01 factions.raid_stage = 0 factions.math
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-02 factions.raid_stage = 0 factions.math
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-03 factions.raid_stage = 0 factions.math
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-04 factions.raid_stage = 0 factions.math
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-05 factions.raid_stage = 0 factions.math
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-06 factions.raid_stage = 0 factions.math

scoreboard players set war_bar-01 factions.next_stage 0
scoreboard players set war_bar-02 factions.next_stage 0
scoreboard players set war_bar-03 factions.next_stage 0
scoreboard players set war_bar-04 factions.next_stage 0
scoreboard players set war_bar-05 factions.next_stage 0
scoreboard players set war_bar-06 factions.next_stage 0
