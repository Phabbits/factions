# Common to all raids

bossbar set truce_bar visible false

# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow


# Enable raid trigger
scoreboard players enable @a[team=red] war-blue
scoreboard players enable @a[team=blue] war-red
scoreboard players enable @a[team=red] war-green
scoreboard players enable @a[team=green] war-red
scoreboard players enable @a[team=red] war-yellow
scoreboard players enable @a[team=yellow] war-red
scoreboard players enable @a[team=blue] war-green
scoreboard players enable @a[team=green] war-blue
scoreboard players enable @a[team=blue] war-yellow
scoreboard players enable @a[team=yellow] war-blue
scoreboard players enable @a[team=green] war-yellow
scoreboard players enable @a[team=yellow] war-green
scoreboard players enable @a raid-red
scoreboard players enable @a raid-blue
scoreboard players enable @a raid-green
scoreboard players enable @a raid-yellow
scoreboard players enable @a truce
