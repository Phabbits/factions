# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# Inform who is raiding
execute if score @s factions.team = 1 factions.math run tellraw @a {"color":"white","text":"Blue has called a raid on Red!"}
execute if score @s factions.team = 2 factions.math run tellraw @a {"color":"white","text":"Green has called a raid on Red!"}
execute if score @s factions.team = 3 factions.math run tellraw @a {"color":"white","text":"Yellow has called a raid on Red!"}

# Setup bossbar
execute if score @s raid-base = 1 factions.math run scoreboard players operation raid_bar-01 factions.team = 0 factions.math
execute if score @s raid-base = 2 factions.math run scoreboard players operation raid_bar-02 factions.team = 0 factions.math
execute if score @s raid-base = 3 factions.math run scoreboard players operation raid_bar-03 factions.team = 0 factions.math
execute if score @s raid-base = 4 factions.math run scoreboard players operation raid_bar-04 factions.team = 0 factions.math
execute if score @s raid-base = 5 factions.math run scoreboard players operation raid_bar-05 factions.team = 0 factions.math
execute if score @s raid-base = 6 factions.math run scoreboard players operation raid_bar-06 factions.team = 0 factions.math
execute if score @s raid-base = 7 factions.math run scoreboard players operation raid_bar-07 factions.team = 0 factions.math
execute if score @s raid-base = 8 factions.math run scoreboard players operation raid_bar-08 factions.team = 0 factions.math
execute if score @s raid-base = 9 factions.math run scoreboard players operation raid_bar-09 factions.team = 0 factions.math
execute if score @s raid-base = 10 factions.math run scoreboard players operation raid_bar-10 factions.team = 0 factions.math
execute if score @s raid-base = 11 factions.math run scoreboard players operation raid_bar-11 factions.team = 0 factions.math
execute if score @s raid-base = 12 factions.math run scoreboard players operation raid_bar-12 factions.team = 0 factions.math
execute if score @s raid-base = 13 factions.math run scoreboard players operation raid_bar-13 factions.team = 0 factions.math
execute if score @s raid-base = 14 factions.math run scoreboard players operation raid_bar-14 factions.team = 0 factions.math
execute if score @s raid-base = 15 factions.math run scoreboard players operation raid_bar-15 factions.team = 0 factions.math

execute if score @s raid-base = 1 factions.math run scoreboard players set raid_bar-01 factions.next_stage = 1 factions.math
execute if score @s raid-base = 2 factions.math run scoreboard players set raid_bar-02 factions.next_stage = 1 factions.math
execute if score @s raid-base = 3 factions.math run scoreboard players set raid_bar-03 factions.next_stage = 1 factions.math
execute if score @s raid-base = 4 factions.math run scoreboard players set raid_bar-04 factions.next_stage = 1 factions.math
execute if score @s raid-base = 5 factions.math run scoreboard players set raid_bar-05 factions.next_stage = 1 factions.math
execute if score @s raid-base = 6 factions.math run scoreboard players set raid_bar-06 factions.next_stage = 1 factions.math
execute if score @s raid-base = 7 factions.math run scoreboard players set raid_bar-07 factions.next_stage = 1 factions.math
execute if score @s raid-base = 8 factions.math run scoreboard players set raid_bar-08 factions.next_stage = 1 factions.math
execute if score @s raid-base = 9 factions.math run scoreboard players set raid_bar-09 factions.next_stage = 1 factions.math
execute if score @s raid-base = 10 factions.math run scoreboard players set raid_bar-10 factions.next_stage = 1 factions.math
execute if score @s raid-base = 11 factions.math run scoreboard players set raid_bar-11 factions.next_stage = 1 factions.math
execute if score @s raid-base = 12 factions.math run scoreboard players set raid_bar-12 factions.next_stage = 1 factions.math
execute if score @s raid-base = 13 factions.math run scoreboard players set raid_bar-13 factions.next_stage = 1 factions.math
execute if score @s raid-base = 14 factions.math run scoreboard players set raid_bar-14 factions.next_stage = 1 factions.math
execute if score @s raid-base = 15 factions.math run scoreboard players set raid_bar-15 factions.next_stage = 1 factions.math

function faction:pre-raid

# Disable trigger for all players
execute as @a run trigger raid-red
execute as @a run scoreboard players set @s raid-red 0
