tellraw @a {"color":"blue","text":"A player has joined team Blue!"}

team join blue @s

scoreboard players set @s factions.team 1

# Disable join triggers
trigger join-red
scoreboard players set @s join-red 0
trigger join-green
scoreboard players set @s join-green 0
trigger join-yellow
scoreboard players set @s join-yellow 0

# Enable raid triggers
scoreboard players enable @s raid-red
scoreboard players enable @s raid-green
scoreboard players enable @s raid-yellow

scoreboard players enable @s war-red
scoreboard players enable @s war-green
scoreboard players enable @s war-yellow

scoreboard players set @s join-blue 0

# Teleport to base
tp @s -46  79  135
