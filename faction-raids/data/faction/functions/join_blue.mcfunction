tellraw @a {"color":"blue","text":"A player has joined team Blue!"}
scoreboard players set @s factions.team 2
team join blue @s

# Disable join triggers
scoreboard players set @s join-blue 0
trigger join-red
scoreboard players set @s join-red 0
# Enable raid triggers
scoreboard players enable @s raid-red
