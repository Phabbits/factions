# scoreboard objectives add <objective> <criteria> <display_name>
scoreboard objectives add factions.team dummy
scoreboard objectives add factions.timer dummy
# scoreboard players operation requires a source and sourceObjective
# So we make a scoreboard player '1' and set their factions.math value to '1'
# So we can do scoreboard players operations <targets> <targetObjective> -= 1 factions.math
scoreboard objectives add factions.math dummy
# scoreboard player set <targets> <objective> <score>
scoreboard players set default factions.timer 200
scoreboard players set raid factions.timer 0
scoreboard players set 1 factions.math 1
scoreboard players set 0 factions.math 0

tellraw @a {"color":"green","text":"Factions loaded!"}

# Trigger objectives is how non-operator players can call raids
# /trigger raid-red
scoreboard objectives add join-red trigger
scoreboard objectives add raid-red trigger
scoreboard objectives add join-blue trigger
scoreboard objectives add raid-blue trigger
# Enable joining triggers
scoreboard players enable @a join-red
scoreboard players enable @a join-blue

# Setup teams
team add red "Red Team"
team modify red color red
team add blue "Blue Team"
team modify blue color blue

bossbar add factions.raid_bar "Bar"
