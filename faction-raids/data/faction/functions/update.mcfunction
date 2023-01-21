# Check scoreboard triggers
execute as @a[scores={join-red=1}] run function faction:join_red
execute as @a[scores={raid-red=1}] run function faction:raid_red

execute as @a[scores={join-blue=1}] run function faction:join_blue
execute as @a[scores={raid-blue=1}] run function faction:raid_blue

# Count down timer
# scoreboard players operation <targets> <targetObjective> <operation> <source> <sourceObjective>
scoreboard players operation raid factions.timer -= 1 factions.math

# Update bossbar
# Only one entity is allowed
execute store result bossbar factions.raid_bar value run scoreboard players get raid factions.timer

# Hider bossbar if raid is complete
# Only one entity is allowed
execute if score raid factions.timer <= 0 factions.math run bossbar set factions.raid_bar visible false
# Reset tags
execute if score raid factions.timer <= 0 factions.math run tag @a[tag=factions.raiding] remove factions.raiding
execute if score raid factions.timer <= 0 factions.math run tag @a[tag=factions.raider] remove factions.raider
execute if score raid factions.timer <= 0 factions.math run tag @a[tag=factions.defender] remove factions.defender
