# Common to all raids

execute if score war_bar-01 factions.next_stage = 1 factions.math run bossbar set war_bar-01 visible false
execute if score war_bar-02 factions.next_stage = 1 factions.math run bossbar set war_bar-02 visible false
execute if score war_bar-03 factions.next_stage = 1 factions.math run bossbar set war_bar-03 visible false
execute if score war_bar-04 factions.next_stage = 1 factions.math run bossbar set war_bar-04 visible false
execute if score war_bar-05 factions.next_stage = 1 factions.math run bossbar set war_bar-05 visible false
execute if score war_bar-06 factions.next_stage = 1 factions.math run bossbar set war_bar-06 visible false

# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow

# war_bar-01 -   Red v. Blue   |   Blue v. Red
# war_bar-02 -   Red v. Green  |  Green v. Red
# war_bar-03 -   Red v. Yellow | Yellow v. Red
# war_bar-04 -  Blue v. Green  |  Green v. Blue
# war_bar-05 -  Blue v. Yellow | Yellow v. Blue
# war_bar-06 - Green v. Yellow | Yellow v. Green

# Enable raid trigger
execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=red] war-blue
execute if score war_bar-01 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=blue] war-red
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=red] war-green
execute if score war_bar-02 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=green] war-red
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=red] war-yellow
execute if score war_bar-03 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=yellow] war-red
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=blue] war-green
execute if score war_bar-04 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=green] war-blue
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=blue] war-yellow
execute if score war_bar-05 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=yellow] war-blue
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=green] war-yellow
execute if score war_bar-06 factions.next_stage = 1 factions.math run scoreboard players enable @a[team=yellow] war-green
