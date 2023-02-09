# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# Inform who is raiding
tellraw @a {"color":"white","text":"A truce has been called!"}

# Setup bossbar
bossbar set truce_bar name "Truce! No Raids or Wars!"

bossbar set truce_bar color green

bossbar set truce_bar visible true

bossbar set truce_bar players @a

execute store result bossbar truce_bar max run scoreboard players get truce factions.timer

execute store result bossbar truce_bar value run scoreboard players get truce factions.timer

scoreboard players operation truce_bar factions.timer = truce factions.timer

scoreboard players operation truce_bar factions.raid_stage = 1 factions.math

# Reset any attempt at a truce
scoreboard players set red factions.truce 0
scoreboard players set blue factions.truce 0
scoreboard players set green factions.truce 0
scoreboard players set yellow factions.truce 0

# Disable trigger for all players
execute if score @s factions.team = 1 factions.math run execute as @a[team=blue] run trigger war-red
execute if score @s factions.team = 1 factions.math run scoreboard players set @a[team=blue] war-red 0
execute if score @s factions.team = 2 factions.math run execute as @a[team=green] run trigger war-red
execute if score @s factions.team = 2 factions.math run scoreboard players set @a[team=green] war-red 0
execute if score @s factions.team = 3 factions.math run execute as @a[team=yellow] run trigger war-red
execute if score @s factions.team = 3 factions.math run scoreboard players set @a[team=yellow] war-red 0
execute if score @s factions.team = 0 factions.math run execute as @a[team=red] run trigger war-blue
execute if score @s factions.team = 0 factions.math run scoreboard players set @a[team=red] war-blue 0
execute if score @s factions.team = 2 factions.math run execute as @a[team=green] run trigger war-blue
execute if score @s factions.team = 2 factions.math run scoreboard players set @a[team=green] war-blue 0
execute if score @s factions.team = 3 factions.math run execute as @a[team=yellow] run trigger war-blue
execute if score @s factions.team = 3 factions.math run scoreboard players set @a[team=yellow] war-blue 0
execute if score @s factions.team = 0 factions.math run execute as @a[team=red] run trigger war-green
execute if score @s factions.team = 0 factions.math run scoreboard players set @a[team=red] war-green 0
execute if score @s factions.team = 1 factions.math run execute as @a[team=blue] run trigger war-green
execute if score @s factions.team = 1 factions.math run scoreboard players set @a[team=blue] war-green 0
execute if score @s factions.team = 3 factions.math run execute as @a[team=yellow] run trigger war-green
execute if score @s factions.team = 3 factions.math run scoreboard players set @a[team=yellow] war-green 0
execute if score @s factions.team = 0 factions.math run execute as @a[team=red] run trigger war-yellow
execute if score @s factions.team = 0 factions.math run scoreboard players set @a[team=red] war-yellow 0
execute if score @s factions.team = 1 factions.math run execute as @a[team=blue] run trigger war-yellow
execute if score @s factions.team = 1 factions.math run scoreboard players set @a[team=blue] war-yellow 0
execute if score @s factions.team = 2 factions.math run execute as @a[team=green] run trigger war-yellow
execute if score @s factions.team = 2 factions.math run scoreboard players set @a[team=green] war-yellow 0
execute as @a run trigger raid-red
execute as @a run scoreboard players set @s raid-red 0
execute as @a run trigger raid-blue
execute as @a run scoreboard players set @s raid-blue 0
execute as @a run trigger raid-green
execute as @a run scoreboard players set @s raid-green 0
execute as @a run trigger raid-yellow
execute as @a run scoreboard players set @s raid-yellow 0
