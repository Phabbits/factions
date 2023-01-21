# Killing the spectator here returns them to their spawn point
# Negating the need for the armor_stand
kill @a[tag=respawn.respawning]

#execute if entity @a[tag=respawn.respawning] run summon minecraft:armor_stand ~ ~ ~ {Tags:["respawn.point"],Invisible:1b}

execute as @a[tag=respawn.respawning,limit=1,sort=nearest] if entity @a[tag=respawn.respawning,limit=1,sort=nearest] store result entity @e[type=armor_stand,tag=respawn.point,limit=1] Pos[0] double 1 run data get entity @s SpawnX 1
execute as @a[tag=respawn.respawning,limit=1,sort=nearest] if entity @a[tag=respawn.respawning,limit=1,sort=nearest] store result entity @e[type=armor_stand,tag=respawn.point,limit=1] Pos[1] double 1 run data get entity @s SpawnY 1
execute as @a[tag=respawn.respawning,limit=1,sort=nearest] if entity @a[tag=respawn.respawning,limit=1,sort=nearest] store result entity @e[type=armor_stand,tag=respawn.point,limit=1] Pos[2] double 1 run data get entity @s SpawnZ 1
execute as @a[tag=respawn.respawning,limit=1,sort=nearest] if entity @a[tag=respawn.respawning,limit=1,sort=nearest] store result entity @e[type=armor_stand,tag=respawn.point,limit=1] Rotation double 1 run data get entity @s SpawnAngle 1

# This teleport ensures a player does not spawn where they are currenty spectating at
#teleport @a[tag=respawn.respawning,limit=1,sort=nearest] @e[type=armor_stand,tag=respawn.point,limit=1]
#kill @e[type=armor_stand,tag=respawn.point]

# Remove gamemode specific respawn flag
gamemode adventure @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toAdventure]
tag @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toAdventure] remove respawn.toAdventure
gamemode survival @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toSurvival]
tag @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toSurvival] remove respawn.toSurvival
gamemode creative @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toCreative]
tag @a[tag=respawn.respawning,limit=1,sort=nearest,tag=respawn.toCreative] remove respawn.toCreative

# Remove dead check
scoreboard players reset @a[scores={respawn.dead=1..},tag=respawn.respawning,limit=1,sort=nearest] respawn.dead
tag @p[tag=respawn.respawning,limit=1,sort=nearest] remove respawn.respawning
