# Common to all raids
# ---- Teams ----
# 0 - white
# 1 - blue
# 2 - green
# 3 - yellow

# war_bar-01 -   Red v. Blue   |   Blue v. Red
# war_bar-02 -   Red v. Green  |  Green v. Red
# war_bar-03 -   Red v. Yellow | Yellow v. Red
# war_bar-04 -  Blue v. Green  |  Green v. Blue
# war_bar-05 -  Blue v. Yellow | Yellow v. Blue
# war_bar-06 - Green v. Yellow | Yellow v. Green

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 name "  Red  >> Restock! <<  Blue "
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 name "  Red  >> Restock! << Green "
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 name "  Red  >> Restock! << Yellow"
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 name " Blue  >> Restock! << Green "
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 name " Blue  >> Restock! << Yellow"
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 name " Green >> Restock! << Yellow"

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 color white
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 color white
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 color white
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 color white
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 color white
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 color white

execute if score war_bar-01 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-01 max run scoreboard players get post-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-02 max run scoreboard players get post-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-03 max run scoreboard players get post-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-04 max run scoreboard players get post-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-05 max run scoreboard players get post-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-06 max run scoreboard players get post-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-01 value run scoreboard players get post-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-02 value run scoreboard players get post-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-03 value run scoreboard players get post-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-04 value run scoreboard players get post-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-05 value run scoreboard players get post-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run execute store result bossbar war_bar-06 value run scoreboard players get post-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-01 factions.timer = post-war factions.timer
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-02 factions.timer = post-war factions.timer
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-03 factions.timer = post-war factions.timer
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-04 factions.timer = post-war factions.timer
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-05 factions.timer = post-war factions.timer
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-06 factions.timer = post-war factions.timer

execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-01 factions.raid_stage = 2 factions.math
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-02 factions.raid_stage = 2 factions.math
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-03 factions.raid_stage = 2 factions.math
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-04 factions.raid_stage = 2 factions.math
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-05 factions.raid_stage = 2 factions.math
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players operation war_bar-06 factions.raid_stage = 2 factions.math

scoreboard players set war_bar-01 factions.next_stage 0
scoreboard players set war_bar-02 factions.next_stage 0
scoreboard players set war_bar-03 factions.next_stage 0
scoreboard players set war_bar-04 factions.next_stage 0
scoreboard players set war_bar-05 factions.next_stage 0
scoreboard players set war_bar-06 factions.next_stage 0
