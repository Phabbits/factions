tellraw @a {"color":"yellow","text":"A player has joined team Yellow!"}

team join yellow @s

scoreboard players set @s factions.team 3

# Disable join triggers
trigger join-blue
scoreboard players set @s join-blue 0
trigger join-green
scoreboard players set @s join-green 0
trigger join-red
scoreboard players set @s join-red 0

# Enable raid triggers
scoreboard players enable @s raid-blue
scoreboard players enable @s raid-green
scoreboard players enable @s raid-red

scoreboard players enable @s war-red
scoreboard players enable @s war-blue
scoreboard players enable @s war-green

scoreboard players set @s join-yellow 0

# Teleport to base
tp @s -193 74 -68
