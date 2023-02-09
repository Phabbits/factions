# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# Inform all
execute if score @s factions.team = 0 factions.math run tellraw @a {"color":"white","text":"Red has requested a truce!"}
execute if score @s factions.team = 1 factions.math run tellraw @a {"color":"white","text":"Blue has requested a truce!"}
execute if score @s factions.team = 2 factions.math run tellraw @a {"color":"white","text":"Green has requested a truce!"}
execute if score @s factions.team = 3 factions.math run tellraw @a {"color":"white","text":"Yellow has requested a truce!"}

# Trigger for that team
execute if score @s factions.team = 0 factions.math run scoreboard players set red factions.truce 1
execute if score @s factions.team = 1 factions.math run scoreboard players set blue factions.truce 1
execute if score @s factions.team = 2 factions.math run scoreboard players set green factions.truce 1
execute if score @s factions.team = 3 factions.math run scoreboard players set yellow factions.truce 1

# Check if all teams had triggered
execute if score red factions.truce = 1 factions.math run execute if score blue factions.truce = 1 factions.math run execute if score green factions.truce = 1 factions.math run execute if score yellow factions.truce = 1 factions.math run function faction:truce

# Reset trigger for all players on the team
execute if score @s factions.team = 0 factions.math run execute as @a[team=red] run trigger truce
execute if score @s factions.team = 0 factions.math run scoreboard players set @a[team=red] truce 0
execute if score @s factions.team = 1 factions.math run execute as @a[team=blue] run trigger truce
execute if score @s factions.team = 1 factions.math run scoreboard players set @a[team=blue] truce 0
execute if score @s factions.team = 2 factions.math run execute as @a[team=green] run trigger truce
execute if score @s factions.team = 2 factions.math run scoreboard players set @a[team=green] truce 0
execute if score @s factions.team = 3 factions.math run execute as @a[team=yellow] run trigger truce
execute if score @s factions.team = 3 factions.math run scoreboard players set @a[team=yellow] truce 0
