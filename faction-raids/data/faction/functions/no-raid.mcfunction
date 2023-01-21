# Common to all raids

execute if score raid_bar-01 factions.next_stage = 1 factions.math run bossbar set raid_bar-01 visible false
execute if score raid_bar-02 factions.next_stage = 1 factions.math run bossbar set raid_bar-02 visible false
execute if score raid_bar-03 factions.next_stage = 1 factions.math run bossbar set raid_bar-03 visible false
execute if score raid_bar-04 factions.next_stage = 1 factions.math run bossbar set raid_bar-04 visible false
execute if score raid_bar-05 factions.next_stage = 1 factions.math run bossbar set raid_bar-05 visible false
execute if score raid_bar-06 factions.next_stage = 1 factions.math run bossbar set raid_bar-06 visible false
execute if score raid_bar-07 factions.next_stage = 1 factions.math run bossbar set raid_bar-07 visible false
execute if score raid_bar-08 factions.next_stage = 1 factions.math run bossbar set raid_bar-08 visible false
execute if score raid_bar-09 factions.next_stage = 1 factions.math run bossbar set raid_bar-09 visible false
execute if score raid_bar-10 factions.next_stage = 1 factions.math run bossbar set raid_bar-10 visible false
execute if score raid_bar-11 factions.next_stage = 1 factions.math run bossbar set raid_bar-11 visible false
execute if score raid_bar-12 factions.next_stage = 1 factions.math run bossbar set raid_bar-12 visible false
execute if score raid_bar-13 factions.next_stage = 1 factions.math run bossbar set raid_bar-13 visible false
execute if score raid_bar-14 factions.next_stage = 1 factions.math run bossbar set raid_bar-14 visible false
execute if score raid_bar-15 factions.next_stage = 1 factions.math run bossbar set raid_bar-15 visible false

# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow
# Enable raid trigger
execute if score raid_bar-01 factions.next_stage = 1 factions.math run execute if score raid_bar-01 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-01 factions.next_stage = 1 factions.math run execute if score raid_bar-01 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-01 factions.next_stage = 1 factions.math run execute if score raid_bar-01 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-01 factions.next_stage = 1 factions.math run execute if score raid_bar-01 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-02 factions.next_stage = 1 factions.math run execute if score raid_bar-02 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-02 factions.next_stage = 1 factions.math run execute if score raid_bar-02 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-02 factions.next_stage = 1 factions.math run execute if score raid_bar-02 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-02 factions.next_stage = 1 factions.math run execute if score raid_bar-02 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-03 factions.next_stage = 1 factions.math run execute if score raid_bar-03 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-03 factions.next_stage = 1 factions.math run execute if score raid_bar-03 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-03 factions.next_stage = 1 factions.math run execute if score raid_bar-03 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-03 factions.next_stage = 1 factions.math run execute if score raid_bar-03 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-04 factions.next_stage = 1 factions.math run execute if score raid_bar-04 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-04 factions.next_stage = 1 factions.math run execute if score raid_bar-04 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-04 factions.next_stage = 1 factions.math run execute if score raid_bar-04 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-04 factions.next_stage = 1 factions.math run execute if score raid_bar-04 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-05 factions.next_stage = 1 factions.math run execute if score raid_bar-05 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-05 factions.next_stage = 1 factions.math run execute if score raid_bar-05 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-05 factions.next_stage = 1 factions.math run execute if score raid_bar-05 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-05 factions.next_stage = 1 factions.math run execute if score raid_bar-05 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-06 factions.next_stage = 1 factions.math run execute if score raid_bar-06 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-06 factions.next_stage = 1 factions.math run execute if score raid_bar-06 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-06 factions.next_stage = 1 factions.math run execute if score raid_bar-06 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-06 factions.next_stage = 1 factions.math run execute if score raid_bar-06 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-07 factions.next_stage = 1 factions.math run execute if score raid_bar-07 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-07 factions.next_stage = 1 factions.math run execute if score raid_bar-07 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-07 factions.next_stage = 1 factions.math run execute if score raid_bar-07 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-07 factions.next_stage = 1 factions.math run execute if score raid_bar-07 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-08 factions.next_stage = 1 factions.math run execute if score raid_bar-08 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-08 factions.next_stage = 1 factions.math run execute if score raid_bar-08 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-08 factions.next_stage = 1 factions.math run execute if score raid_bar-08 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-08 factions.next_stage = 1 factions.math run execute if score raid_bar-08 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-09 factions.next_stage = 1 factions.math run execute if score raid_bar-09 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-09 factions.next_stage = 1 factions.math run execute if score raid_bar-09 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-09 factions.next_stage = 1 factions.math run execute if score raid_bar-09 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-09 factions.next_stage = 1 factions.math run execute if score raid_bar-09 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-10 factions.next_stage = 1 factions.math run execute if score raid_bar-10 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-10 factions.next_stage = 1 factions.math run execute if score raid_bar-10 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-10 factions.next_stage = 1 factions.math run execute if score raid_bar-10 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-10 factions.next_stage = 1 factions.math run execute if score raid_bar-10 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-11 factions.next_stage = 1 factions.math run execute if score raid_bar-11 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-11 factions.next_stage = 1 factions.math run execute if score raid_bar-11 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-11 factions.next_stage = 1 factions.math run execute if score raid_bar-11 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-11 factions.next_stage = 1 factions.math run execute if score raid_bar-11 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-12 factions.next_stage = 1 factions.math run execute if score raid_bar-12 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-12 factions.next_stage = 1 factions.math run execute if score raid_bar-12 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-12 factions.next_stage = 1 factions.math run execute if score raid_bar-12 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-12 factions.next_stage = 1 factions.math run execute if score raid_bar-12 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-13 factions.next_stage = 1 factions.math run execute if score raid_bar-13 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-13 factions.next_stage = 1 factions.math run execute if score raid_bar-13 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-13 factions.next_stage = 1 factions.math run execute if score raid_bar-13 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-13 factions.next_stage = 1 factions.math run execute if score raid_bar-13 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-14 factions.next_stage = 1 factions.math run execute if score raid_bar-14 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-14 factions.next_stage = 1 factions.math run execute if score raid_bar-14 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-14 factions.next_stage = 1 factions.math run execute if score raid_bar-14 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-14 factions.next_stage = 1 factions.math run execute if score raid_bar-14 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
execute if score raid_bar-15 factions.next_stage = 1 factions.math run execute if score raid_bar-15 factions.team = 0 factions.math run scoreboard players enable @a raid-red
execute if score raid_bar-15 factions.next_stage = 1 factions.math run execute if score raid_bar-15 factions.team = 1 factions.math run scoreboard players enable @a raid-blue
execute if score raid_bar-15 factions.next_stage = 1 factions.math run execute if score raid_bar-15 factions.team = 2 factions.math run scoreboard players enable @a raid-green
execute if score raid_bar-15 factions.next_stage = 1 factions.math run execute if score raid_bar-15 factions.team = 3 factions.math run scoreboard players enable @a raid-yellow
