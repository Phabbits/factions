# Check scoreboard triggers

# Always enable base trigger
# Setting base trigger disables it
scoreboard players enable @a raid-base

# Join teams
execute as @a[scores={join-red=1}] run function faction:join_red
execute as @a[scores={join-blue=1}] run function faction:join_blue
execute as @a[scores={join-green=1}] run function faction:join_green
execute as @a[scores={join-yellow=1}] run function faction:join_yellow

# Call raids
execute as @a[scores={raid-red=1}] run function faction:raid_red
execute as @a[scores={raid-blue=1}] run function faction:raid_blue
execute as @a[scores={raid-green=1}] run function faction:raid_green
execute as @a[scores={raid-yellow=1}] run function faction:raid_yellow

# ---- Execute timers ----
# Count down timer
# scoreboard players operation <targets> <targetObjective> <operation> <source> <sourceObjective>
scoreboard players operation raid_bar-01 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-02 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-03 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-04 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-05 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-06 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-07 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-08 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-09 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-10 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-11 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-12 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-13 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-14 factions.timer -= 1 factions.math
scoreboard players operation raid_bar-15 factions.timer -= 1 factions.math

# Update bossbar
# Only one entity is allowed
execute store result bossbar raid_bar-01 value run scoreboard players get raid_bar-01 factions.timer
execute store result bossbar raid_bar-02 value run scoreboard players get raid_bar-02 factions.timer
execute store result bossbar raid_bar-03 value run scoreboard players get raid_bar-03 factions.timer
execute store result bossbar raid_bar-04 value run scoreboard players get raid_bar-04 factions.timer
execute store result bossbar raid_bar-05 value run scoreboard players get raid_bar-05 factions.timer
execute store result bossbar raid_bar-06 value run scoreboard players get raid_bar-06 factions.timer
execute store result bossbar raid_bar-07 value run scoreboard players get raid_bar-07 factions.timer
execute store result bossbar raid_bar-08 value run scoreboard players get raid_bar-08 factions.timer
execute store result bossbar raid_bar-09 value run scoreboard players get raid_bar-09 factions.timer
execute store result bossbar raid_bar-10 value run scoreboard players get raid_bar-10 factions.timer
execute store result bossbar raid_bar-11 value run scoreboard players get raid_bar-11 factions.timer
execute store result bossbar raid_bar-12 value run scoreboard players get raid_bar-12 factions.timer
execute store result bossbar raid_bar-13 value run scoreboard players get raid_bar-13 factions.timer
execute store result bossbar raid_bar-14 value run scoreboard players get raid_bar-14 factions.timer
execute store result bossbar raid_bar-15 value run scoreboard players get raid_bar-15 factions.timer

# Timer up!
execute if score raid_bar-01 factions.timer = 0 factions.math run scoreboard players set raid_bar-01 factions.next_stage 1
execute if score raid_bar-01 factions.timer = 0 factions.math run execute if score raid_bar-01 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-01 factions.timer = 0 factions.math run execute if score raid_bar-01 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-01 factions.timer = 0 factions.math run execute if score raid_bar-01 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-02 factions.timer = 0 factions.math run scoreboard players set raid_bar-02 factions.next_stage 1
execute if score raid_bar-02 factions.timer = 0 factions.math run execute if score raid_bar-02 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-02 factions.timer = 0 factions.math run execute if score raid_bar-02 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-02 factions.timer = 0 factions.math run execute if score raid_bar-02 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-03 factions.timer = 0 factions.math run scoreboard players set raid_bar-03 factions.next_stage 1
execute if score raid_bar-03 factions.timer = 0 factions.math run execute if score raid_bar-03 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-03 factions.timer = 0 factions.math run execute if score raid_bar-03 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-03 factions.timer = 0 factions.math run execute if score raid_bar-03 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-04 factions.timer = 0 factions.math run scoreboard players set raid_bar-04 factions.next_stage 1
execute if score raid_bar-04 factions.timer = 0 factions.math run execute if score raid_bar-04 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-04 factions.timer = 0 factions.math run execute if score raid_bar-04 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-04 factions.timer = 0 factions.math run execute if score raid_bar-04 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-05 factions.timer = 0 factions.math run scoreboard players set raid_bar-05 factions.next_stage 1
execute if score raid_bar-05 factions.timer = 0 factions.math run execute if score raid_bar-05 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-05 factions.timer = 0 factions.math run execute if score raid_bar-05 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-05 factions.timer = 0 factions.math run execute if score raid_bar-05 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-06 factions.timer = 0 factions.math run scoreboard players set raid_bar-06 factions.next_stage 1
execute if score raid_bar-06 factions.timer = 0 factions.math run execute if score raid_bar-06 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-06 factions.timer = 0 factions.math run execute if score raid_bar-06 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-06 factions.timer = 0 factions.math run execute if score raid_bar-06 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-07 factions.timer = 0 factions.math run scoreboard players set raid_bar-07 factions.next_stage 1
execute if score raid_bar-07 factions.timer = 0 factions.math run execute if score raid_bar-07 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-07 factions.timer = 0 factions.math run execute if score raid_bar-07 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-07 factions.timer = 0 factions.math run execute if score raid_bar-07 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-08 factions.timer = 0 factions.math run scoreboard players set raid_bar-08 factions.next_stage 1
execute if score raid_bar-08 factions.timer = 0 factions.math run execute if score raid_bar-08 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-08 factions.timer = 0 factions.math run execute if score raid_bar-08 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-08 factions.timer = 0 factions.math run execute if score raid_bar-08 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-09 factions.timer = 0 factions.math run scoreboard players set raid_bar-09 factions.next_stage 1
execute if score raid_bar-09 factions.timer = 0 factions.math run execute if score raid_bar-09 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-09 factions.timer = 0 factions.math run execute if score raid_bar-09 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-09 factions.timer = 0 factions.math run execute if score raid_bar-09 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-10 factions.timer = 0 factions.math run scoreboard players set raid_bar-10 factions.next_stage 1
execute if score raid_bar-10 factions.timer = 0 factions.math run execute if score raid_bar-10 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-10 factions.timer = 0 factions.math run execute if score raid_bar-10 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-10 factions.timer = 0 factions.math run execute if score raid_bar-10 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-11 factions.timer = 0 factions.math run scoreboard players set raid_bar-11 factions.next_stage 1
execute if score raid_bar-11 factions.timer = 0 factions.math run execute if score raid_bar-11 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-11 factions.timer = 0 factions.math run execute if score raid_bar-11 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-11 factions.timer = 0 factions.math run execute if score raid_bar-11 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-12 factions.timer = 0 factions.math run scoreboard players set raid_bar-12 factions.next_stage 1
execute if score raid_bar-12 factions.timer = 0 factions.math run execute if score raid_bar-12 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-12 factions.timer = 0 factions.math run execute if score raid_bar-12 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-12 factions.timer = 0 factions.math run execute if score raid_bar-12 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-13 factions.timer = 0 factions.math run scoreboard players set raid_bar-13 factions.next_stage 1
execute if score raid_bar-13 factions.timer = 0 factions.math run execute if score raid_bar-13 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-13 factions.timer = 0 factions.math run execute if score raid_bar-13 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-13 factions.timer = 0 factions.math run execute if score raid_bar-13 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-14 factions.timer = 0 factions.math run scoreboard players set raid_bar-14 factions.next_stage 1
execute if score raid_bar-14 factions.timer = 0 factions.math run execute if score raid_bar-14 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-14 factions.timer = 0 factions.math run execute if score raid_bar-14 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-14 factions.timer = 0 factions.math run execute if score raid_bar-14 factions.raid_stage = 2 factions.math run function faction:no-raid
execute if score raid_bar-15 factions.timer = 0 factions.math run scoreboard players set raid_bar-15 factions.next_stage 1
execute if score raid_bar-15 factions.timer = 0 factions.math run execute if score raid_bar-15 factions.raid_stage = 0 factions.math run function faction:raid
execute if score raid_bar-15 factions.timer = 0 factions.math run execute if score raid_bar-15 factions.raid_stage = 1 factions.math run function faction:post-raid
execute if score raid_bar-15 factions.timer = 0 factions.math run execute if score raid_bar-15 factions.raid_stage = 2 factions.math run function faction:no-raid
