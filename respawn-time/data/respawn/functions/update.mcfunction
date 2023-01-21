# A tilde (~) is for relative coordinates
#execute unless entity @e[type=armor_stand,tag=respawn.point] run summon minecraft:armor_stand ~ ~ ~ {Tags:["respawn.point"],Invisible:1b}

# Reset player timer when player is dead and not yet a spectator
scoreboard players operation @a[scores={respawn.dead=1..},gamemode=!spectator] respawn.timer = time respawn.timer
tag @a[scores={respawn.dead=1..},gamemode=creative] add respawn.toCreative
tag @a[scores={respawn.dead=1..},gamemode=survival] add respawn.toSurvival
tag @a[scores={respawn.dead=1..},gamemode=adventure] add respawn.toAdventure

scoreboard players operation @a[scores={respawn.timer=1..}] respawn.timer -= 1 respawn.math

gamemode spectator @a[scores={respawn.dead=1..},gamemode=!spectator]
tag @a[scores={respawn.timer=0,respawn.dead=1..},gamemode=spectator] add respawn.respawning
# @s targets whoever is executing the command
execute as @a[scores={respawn.timer=1..},gamemode=spectator] run title @s actionbar [{"text":"You died! Respawn in: ","color":"dark_red"},{"score":{"name":"@s[scores={respawn.timer=1..},gamemode=spectator]","objective":"respawn.timer"},"color":"red"}]
function respawn:respawn
