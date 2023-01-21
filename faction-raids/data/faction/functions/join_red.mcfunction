tellraw @a {"color":"red","text":"A player has joined team Red!"}

team join red @s

scoreboard players set @s factions.team 0

# Disable join triggers
trigger join-blue
scoreboard players set @s join-blue 0
trigger join-green
scoreboard players set @s join-green 0
trigger join-yellow
scoreboard players set @s join-yellow 0

# Enable raid triggers
scoreboard players enable @s raid-blue
scoreboard players enable @s raid-green
scoreboard players enable @s raid-yellow

scoreboard players enable @s war-blue
scoreboard players enable @s war-green
scoreboard players enable @s war-yellow

scoreboard players set @s join-red 0
