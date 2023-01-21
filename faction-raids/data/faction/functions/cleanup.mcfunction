# Disable join triggers
execute as @a run trigger join-red
execute as @a run scoreboard players set @s join-red 0
execute as @a run trigger join-blue
execute as @a run scoreboard players set @s join-blue 0
execute as @a run trigger join-green
execute as @a run scoreboard players set @s join-green 0
execute as @a run trigger join-yellow
execute as @a run scoreboard players set @s join-yellow 0

# Disable trigger for all players
execute as @a run trigger raid-red
execute as @a run scoreboard players set @s raid-red 0
execute as @a run trigger raid-blue
execute as @a run scoreboard players set @s raid-blue 0
execute as @a run trigger raid-green
execute as @a run scoreboard players set @s raid-green 0
execute as @a run trigger raid-yellow
execute as @a run scoreboard players set @s raid-yellow 0
execute as @a run trigger war-red
execute as @a run scoreboard players set @s war-red 0
execute as @a run trigger war-blue
execute as @a run scoreboard players set @s war-blue 0
execute as @a run trigger war-green
execute as @a run scoreboard players set @s war-green 0
execute as @a run trigger war-yellow
execute as @a run scoreboard players set @s war-yellow 0
