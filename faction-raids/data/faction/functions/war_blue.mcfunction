# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# Inform who is raiding
execute if score @s factions.team = 0 factions.math run tellraw @a {"color":"white","text":"Red has called a war on Blue!"}
execute if score @s factions.team = 2 factions.math run tellraw @a {"color":"white","text":"Green has called a war on Blue!"}
execute if score @s factions.team = 3 factions.math run tellraw @a {"color":"white","text":"Yellow has called a war on Blue!"}

# Setup bossbar
# war_bar-01 -   Red v. Blue   |   Blue v. Red
# war_bar-02 -   Red v. Green  |  Green v. Red
# war_bar-03 -   Red v. Yellow | Yellow v. Red
# war_bar-04 -  Blue v. Green  |  Green v. Blue
# war_bar-05 -  Blue v. Yellow | Yellow v. Blue
# war_bar-06 - Green v. Yellow | Yellow v. Green
execute if score @s factions.team = 0 factions.math run scoreboard players set war_bar-01 factions.next_stage 1
execute if score @s factions.team = 2 factions.math run scoreboard players set war_bar-04 factions.next_stage 1
execute if score @s factions.team = 3 factions.math run scoreboard players set war_bar-05 factions.next_stage 1

function faction:pre-war

# Disable trigger for all players
execute if score @s factions.team = 0 factions.math run execute as @a[team=red] trigger war-blue
execute if score @s factions.team = 0 factions.math run scoreboard players set @a[team=red] war-blue 0
execute if score @s factions.team = 2 factions.math run execute as @a[team=green] trigger war-blue
execute if score @s factions.team = 2 factions.math run scoreboard players set @a[team=green] war-blue 0
execute if score @s factions.team = 3 factions.math run execute as @a[team=yellow] trigger war-blue
execute if score @s factions.team = 3 factions.math run scoreboard players set @a[team=yellow] war-blue 0
