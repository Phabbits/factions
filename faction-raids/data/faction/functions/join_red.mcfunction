tellraw @a {"color":"red","text":"A player has joined team Red!"}
scoreboard players set @s factions.team 1
team join red @s

# Disable join triggers
scoreboard players set @s join-red 0
trigger join-blue
scoreboard players set @s join-blue 0
# Enable raid triggers
scoreboard players enable @s raid-blue
