# Killing the spectator here returns them to their spawn point
kill @a[tag=respawn.respawning]

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
