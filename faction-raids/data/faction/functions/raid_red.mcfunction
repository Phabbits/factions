tellraw @a {"color":"red","text":"A raid has been called!"}

# Flag all players on the team of the player calling the raid as raiders
#execute if score @a factions.team = @s factions.team run tag @s add factions.raider
#execute if score @a factions.team = @s factions.team run tag @s add factions.raiding
tag @a[team=blue] add factions.raider
tag @a[team=blue] add factions.raiding

# Flag all players on this function's called out team as defenders
tag @a[team=red] add factions.defender
tag @a[team=red] add factions.raiding

# Inform raiders of the raid
tellraw @a[tag=factions.raider] {"color":"red","text":"You are raiding Red!"}

# Inform defenders of the raid
tellraw @a[tag=factions.defender] {"color":"red","text":"Red is raiding you!"}

# Setup bossbar

# Specify base
execute if score @s raid-base = 0 factions.math run bossbar set factions.raid_bar name "Blue Raid on Red Base 0!"
execute if score @s raid-base = 1 factions.math run bossbar set factions.raid_bar name "Blue Raid on Red Base 1!"
execute if score @s raid-base = 2 factions.math run bossbar set factions.raid_bar name "Blue Raid on Red Base 2!"
bossbar set factions.raid_bar color red
bossbar set factions.raid_bar visible true
bossbar set factions.raid_bar players @a[tag=factions.raiding]
execute store result bossbar factions.raid_bar max run scoreboard players get default factions.timer
execute store result bossbar factions.raid_bar value run bossbar get factions.raid_bar max

scoreboard players operation raid factions.timer = default factions.timer

# Reset trigger
scoreboard players set @s raid-red 0
scoreboard players enable @s raid-red
