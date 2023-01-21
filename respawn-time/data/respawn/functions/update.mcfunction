# A tilde (~) is for relative coordinates
#execute unless entity @e[type=armor_stand,tag=respawn.point] run summon minecraft:armor_stand ~ ~ ~ {Tags:["respawn.point"],Invisible:1b}

# Reset player timer when player is dead and not yet a spectator
scoreboard players operation @a[scores={respawn.dead=1..},gamemode=!spectator] respawn.timer = time respawn.timer
tag @a[scores={respawn.dead=1..},gamemode=creative] add respawn.toCreative
tag @a[scores={respawn.dead=1..},gamemode=survival] add respawn.toSurvival
tag @a[scores={respawn.dead=1..},gamemode=adventure] add respawn.toAdventure

# Do not respawn scoreboard players operation @a[scores={respawn.timer=1..}] respawn.timer -= 1 respawn.math

gamemode spectator @a[scores={respawn.dead=1..},gamemode=!spectator]
tag @a[scores={respawn.timer=0,respawn.dead=1..},gamemode=spectator] add respawn.respawning
# @s targets whoever is executing the command
execute as @a[scores={respawn.timer=1..},gamemode=spectator] run title @s actionbar [{"text":"You died! Respawn in: ","color":"dark_red"},{"score":{"name":"@s[scores={respawn.timer=1..},gamemode=spectator]","objective":"respawn.timer"},"color":"red"}]

# Respawn only if not in a raid
execute unless score raid_bar-01 factions.raid_stage = 1 factions.math run execute unless score raid_bar-02 factions.raid_stage = 1 run execute unless score raid_bar-03 factions.raid_stage = 1 run execute unless score raid_bar-04 factions.raid_stage = 1 run execute unless score raid_bar-05 factions.raid_stage = 1 run execute unless score raid_bar-06 factions.raid_stage = 1 run execute unless score raid_bar-07 factions.raid_stage = 1 run execute unless score raid_bar-08 factions.raid_stage = 1 run execute unless score raid_bar-09 factions.raid_stage = 1 run execute unless score raid_bar-10 factions.raid_stage = 1 run execute unless score raid_bar-11 factions.raid_stage = 1 run execute unless score raid_bar-12 factions.raid_stage = 1 run execute unless score raid_bar-13 factions.raid_stage = 1 run execute unless score raid_bar-14 factions.raid_stage = 1 run execute unless score raid_bar-15 factions.raid_stage = 1 run function respawn:respawn
