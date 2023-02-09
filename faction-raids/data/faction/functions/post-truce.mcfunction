# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# Inform who is raiding
tellraw @a {"color":"white","text":"All players double your raid chest"}

# Setup bossbar
bossbar set truce_bar name "All players double your raid chest"

bossbar set truce_bar color white

bossbar set truce_bar visible true

bossbar set truce_bar players @a

execute store result bossbar truce_bar max run scoreboard players get post-truce factions.timer

execute store result bossbar truce_bar value run scoreboard players get post-truce factions.timer

scoreboard players operation truce_bar factions.timer = post-truce factions.timer

scoreboard players operation truce_bar factions.raid_stage = 2 factions.math
