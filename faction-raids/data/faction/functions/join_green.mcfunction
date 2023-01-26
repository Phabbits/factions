tellraw @a {"color":"green","text":"A player has joined team Green!"}

team join green @s

scoreboard players set @s factions.team 2

# Disable join triggers
trigger join-blue
scoreboard players set @s join-blue 0
trigger join-red
scoreboard players set @s join-red 0
trigger join-yellow
scoreboard players set @s join-yellow 0

# Enable raid triggers
scoreboard players enable @s raid-blue
scoreboard players enable @s raid-red
scoreboard players enable @s raid-yellow

scoreboard players enable @s war-red
scoreboard players enable @s war-blue
scoreboard players enable @s war-yellow

scoreboard players set @s join-green 0

# Teleport to base
tp -82 89 -242
