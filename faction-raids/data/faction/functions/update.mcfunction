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

# Call wars
execute as @a[scores={war-red=1}] run function faction:war_red
execute as @a[scores={war-blue=1}] run function faction:war_blue
execute as @a[scores={war-green=1}] run function faction:war_green
execute as @a[scores={war-yellow=1}] run function faction:war_yellow

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

scoreboard players operation war_bar-01 factions.timer -= 1 factions.math
scoreboard players operation war_bar-02 factions.timer -= 1 factions.math
scoreboard players operation war_bar-03 factions.timer -= 1 factions.math
scoreboard players operation war_bar-04 factions.timer -= 1 factions.math
scoreboard players operation war_bar-05 factions.timer -= 1 factions.math
scoreboard players operation war_bar-06 factions.timer -= 1 factions.math

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

execute store result bossbar war_bar-01 value run scoreboard players get war_bar-01 factions.timer
execute store result bossbar war_bar-02 value run scoreboard players get war_bar-02 factions.timer
execute store result bossbar war_bar-03 value run scoreboard players get war_bar-03 factions.timer
execute store result bossbar war_bar-04 value run scoreboard players get war_bar-04 factions.timer
execute store result bossbar war_bar-05 value run scoreboard players get war_bar-05 factions.timer
execute store result bossbar war_bar-06 value run scoreboard players get war_bar-06 factions.timer

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

execute if score war_bar-01 factions.timer = 0 factions.math run scoreboard players set war_bar-01 factions.next_stage 1
execute if score war_bar-01 factions.timer = 0 factions.math run execute if score war_bar-01 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-01 factions.timer = 0 factions.math run execute if score war_bar-01 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-01 factions.timer = 0 factions.math run execute if score war_bar-01 factions.raid_stage = 2 factions.math run function faction:no-war
execute if score war_bar-02 factions.timer = 0 factions.math run scoreboard players set war_bar-02 factions.next_stage 1
execute if score war_bar-02 factions.timer = 0 factions.math run execute if score war_bar-02 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-02 factions.timer = 0 factions.math run execute if score war_bar-02 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-02 factions.timer = 0 factions.math run execute if score war_bar-02 factions.raid_stage = 2 factions.math run function faction:no-war
execute if score war_bar-03 factions.timer = 0 factions.math run scoreboard players set war_bar-03 factions.next_stage 1
execute if score war_bar-03 factions.timer = 0 factions.math run execute if score war_bar-03 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-03 factions.timer = 0 factions.math run execute if score war_bar-03 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-03 factions.timer = 0 factions.math run execute if score war_bar-03 factions.raid_stage = 2 factions.math run function faction:no-war
execute if score war_bar-04 factions.timer = 0 factions.math run scoreboard players set war_bar-04 factions.next_stage 1
execute if score war_bar-04 factions.timer = 0 factions.math run execute if score war_bar-04 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-04 factions.timer = 0 factions.math run execute if score war_bar-04 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-04 factions.timer = 0 factions.math run execute if score war_bar-04 factions.raid_stage = 2 factions.math run function faction:no-war
execute if score war_bar-05 factions.timer = 0 factions.math run scoreboard players set war_bar-05 factions.next_stage 1
execute if score war_bar-05 factions.timer = 0 factions.math run execute if score war_bar-05 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-05 factions.timer = 0 factions.math run execute if score war_bar-05 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-05 factions.timer = 0 factions.math run execute if score war_bar-05 factions.raid_stage = 2 factions.math run function faction:no-war
execute if score war_bar-06 factions.timer = 0 factions.math run scoreboard players set war_bar-06 factions.next_stage 1
execute if score war_bar-06 factions.timer = 0 factions.math run execute if score war_bar-06 factions.raid_stage = 0 factions.math run function faction:war
execute if score war_bar-06 factions.timer = 0 factions.math run execute if score war_bar-06 factions.raid_stage = 1 factions.math run function faction:post-war
execute if score war_bar-06 factions.timer = 0 factions.math run execute if score war_bar-06 factions.raid_stage = 2 factions.math run function faction:no-war

# ---- Respawn ----
# Reset player timer when player is dead and not yet a spectator
scoreboard players operation @a[scores={respawn.dead=1..},gamemode=!spectator] respawn.timer = default respawn.timer
# Tag what gamemode to respawn to
tag @a[scores={respawn.dead=1..},gamemode=creative] add respawn.toCreative
tag @a[scores={respawn.dead=1..},gamemode=survival] add respawn.toSurvival
tag @a[scores={respawn.dead=1..},gamemode=adventure] add respawn.toAdventure

scoreboard players operation @a[scores={respawn.timer=1..}] respawn.timer -= 1 factions.math

# Force spectator mode while dead
gamemode spectator @a[scores={respawn.dead=1..},gamemode=!spectator]
tag @a[scores={respawn.timer=0,respawn.dead=1..},gamemode=spectator] add respawn.respawning
# @s targets whoever is executing the command
execute as @a[scores={respawn.timer=1..},gamemode=spectator] run title @s actionbar [{"text":"You died! Respawn in: ","color":"dark_red"},{"score":{"name":"@s[scores={respawn.timer=1..},gamemode=spectator]","objective":"respawn.timer"},"color":"red"}]
# TODO fix timing issue with KeepSomeInventory
execute as @a[scores={respawn.timer=1..1190},gamemode=spectator] run tp 0 0 0

# Respawn only if not in a raid
function faction:respawn
# execute unless score raid_bar-01 factions.raid_stage = 1 factions.math run execute unless score raid_bar-02 factions.raid_stage = 1 factions.math run execute unless score raid_bar-03 factions.raid_stage = 1 factions.math run execute unless score raid_bar-04 factions.raid_stage = 1 factions.math run execute unless score raid_bar-05 factions.raid_stage = 1 factions.math run execute unless score raid_bar-06 factions.raid_stage = 1 factions.math run execute unless score raid_bar-07 factions.raid_stage = 1 factions.math run execute unless score raid_bar-08 factions.raid_stage = 1 factions.math run execute unless score raid_bar-09 factions.raid_stage = 1 factions.math run execute unless score raid_bar-10 factions.raid_stage = 1 factions.math run execute unless score raid_bar-11 factions.raid_stage = 1 factions.math run execute unless score raid_bar-12 factions.raid_stage = 1 factions.math run execute unless score raid_bar-13 factions.raid_stage = 1 factions.math run execute unless score raid_bar-14 factions.raid_stage = 1 factions.math run execute unless score raid_bar-15 factions.raid_stage = 1 factions.math run function faction:respawn
