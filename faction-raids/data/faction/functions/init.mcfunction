# 15 bases max

# scoreboard objectives add <objective> <criteria> <display_name>

# ---- Teams ----
# 0 - red
# 1 - blue
# 2 - green
# 3 - yellow
scoreboard objectives add factions.team dummy

# Setup teams
team add neutral "Neutral"
team modify red color white
team add red "Red Team"
team modify red color red
team add blue "Blue Team"
team modify blue color blue
team add green "Green Team"
team modify green color green
team add yellow "Yellow Team"
team modify yellow color yellow

# ---- Bases ----
# Setup sidebar
scoreboard objectives add Raid_Chest dummy
scoreboard objectives setdisplay sidebar Raid_Chest

# Add bases
scoreboard players set Base-01 Raid_Chest 0
scoreboard players set Base-02 Raid_Chest 0
scoreboard players set Base-03 Raid_Chest 0
scoreboard players set Base-04 Raid_Chest 0
scoreboard players set Base-05 Raid_Chest 0
scoreboard players set Base-06 Raid_Chest 0
scoreboard players set Base-07 Raid_Chest 0
scoreboard players set Base-08 Raid_Chest 0
scoreboard players set Base-09 Raid_Chest 0
scoreboard players set Base-10 Raid_Chest 0
scoreboard players set Base-11 Raid_Chest 0
scoreboard players set Base-12 Raid_Chest 0
scoreboard players set Base-13 Raid_Chest 0
scoreboard players set Base-14 Raid_Chest 0
scoreboard players set Base-15 Raid_Chest 0
team join neutral Base-01
team join neutral Base-02
team join neutral Base-03
team join neutral Base-04
team join neutral Base-05
team join neutral Base-06
team join neutral Base-07
team join neutral Base-08
team join neutral Base-09
team join neutral Base-10
team join neutral Base-11
team join neutral Base-12
team join neutral Base-13
team join neutral Base-14
team join neutral Base-15

# ---- Triggers ----
# Trigger objectives is how non-operator players can call functions
# /trigger raid-red
scoreboard objectives add join-red trigger
scoreboard objectives add join-blue trigger
scoreboard objectives add join-green trigger
scoreboard objectives add join-yellow trigger
# Enable joining triggers
scoreboard players enable @a join-red
scoreboard players enable @a join-blue
scoreboard players enable @a join-green
scoreboard players enable @a join-yellow

# Raid triggers
scoreboard objectives add raid-base trigger

scoreboard objectives add raid-red trigger
scoreboard objectives add raid-blue trigger
scoreboard objectives add raid-green trigger
scoreboard objectives add raid-yellow trigger

scoreboard objectives add war-red trigger
scoreboard objectives add war-blue trigger
scoreboard objectives add war-green trigger
scoreboard objectives add war-yellow trigger

# ---- Raid Facilitators ----
scoreboard objectives add factions.timer dummy

# scoreboard player set <targets> <objective> <score>
scoreboard players set pre-raid factions.timer 2400
scoreboard players set raid factions.timer 6000
scoreboard players set post-raid factions.timer 4000
scoreboard players set pre-war factions.timer 200
scoreboard players set war factions.timer 200
scoreboard players set post-war factions.timer 200

scoreboard players set raid_bar-01 factions.timer 0
scoreboard players set raid_bar-02 factions.timer 0
scoreboard players set raid_bar-03 factions.timer 0
scoreboard players set raid_bar-04 factions.timer 0
scoreboard players set raid_bar-05 factions.timer 0
scoreboard players set raid_bar-06 factions.timer 0
scoreboard players set raid_bar-07 factions.timer 0
scoreboard players set raid_bar-08 factions.timer 0
scoreboard players set raid_bar-09 factions.timer 0
scoreboard players set raid_bar-10 factions.timer 0
scoreboard players set raid_bar-11 factions.timer 0
scoreboard players set raid_bar-12 factions.timer 0
scoreboard players set raid_bar-13 factions.timer 0
scoreboard players set raid_bar-14 factions.timer 0
scoreboard players set raid_bar-15 factions.timer 0

scoreboard players set war_bar-01 factions.timer 0
scoreboard players set war_bar-02 factions.timer 0
scoreboard players set war_bar-03 factions.timer 0
scoreboard players set war_bar-04 factions.timer 0
scoreboard players set war_bar-05 factions.timer 0
scoreboard players set war_bar-06 factions.timer 0

# 0 - pre-raid
# 1 - raid
# 2 - post-raid
scoreboard objectives add factions.raid_stage dummy

scoreboard players set raid_bar-01 factions.raid_stage 0
scoreboard players set raid_bar-02 factions.raid_stage 0
scoreboard players set raid_bar-03 factions.raid_stage 0
scoreboard players set raid_bar-04 factions.raid_stage 0
scoreboard players set raid_bar-05 factions.raid_stage 0
scoreboard players set raid_bar-06 factions.raid_stage 0
scoreboard players set raid_bar-07 factions.raid_stage 0
scoreboard players set raid_bar-08 factions.raid_stage 0
scoreboard players set raid_bar-09 factions.raid_stage 0
scoreboard players set raid_bar-10 factions.raid_stage 0
scoreboard players set raid_bar-11 factions.raid_stage 0
scoreboard players set raid_bar-12 factions.raid_stage 0
scoreboard players set raid_bar-13 factions.raid_stage 0
scoreboard players set raid_bar-14 factions.raid_stage 0
scoreboard players set raid_bar-15 factions.raid_stage 0

scoreboard players set war_bar-01 factions.raid_stage 0
scoreboard players set war_bar-02 factions.raid_stage 0
scoreboard players set war_bar-03 factions.raid_stage 0
scoreboard players set war_bar-04 factions.raid_stage 0
scoreboard players set war_bar-05 factions.raid_stage 0
scoreboard players set war_bar-06 factions.raid_stage 0

scoreboard objectives add factions.next_stage dummy

scoreboard players set raid_bar-01 factions.next_stage 0
scoreboard players set raid_bar-02 factions.next_stage 0
scoreboard players set raid_bar-03 factions.next_stage 0
scoreboard players set raid_bar-04 factions.next_stage 0
scoreboard players set raid_bar-05 factions.next_stage 0
scoreboard players set raid_bar-06 factions.next_stage 0
scoreboard players set raid_bar-07 factions.next_stage 0
scoreboard players set raid_bar-08 factions.next_stage 0
scoreboard players set raid_bar-09 factions.next_stage 0
scoreboard players set raid_bar-10 factions.next_stage 0
scoreboard players set raid_bar-11 factions.next_stage 0
scoreboard players set raid_bar-12 factions.next_stage 0
scoreboard players set raid_bar-13 factions.next_stage 0
scoreboard players set raid_bar-14 factions.next_stage 0
scoreboard players set raid_bar-15 factions.next_stage 0

scoreboard players set war_bar-01 factions.next_stage 0
scoreboard players set war_bar-02 factions.next_stage 0
scoreboard players set war_bar-03 factions.next_stage 0
scoreboard players set war_bar-04 factions.next_stage 0
scoreboard players set war_bar-05 factions.next_stage 0
scoreboard players set war_bar-06 factions.next_stage 0

scoreboard players set raid_bar-01 factions.team 0
scoreboard players set raid_bar-02 factions.team 0
scoreboard players set raid_bar-03 factions.team 0
scoreboard players set raid_bar-04 factions.team 0
scoreboard players set raid_bar-05 factions.team 0
scoreboard players set raid_bar-06 factions.team 0
scoreboard players set raid_bar-07 factions.team 0
scoreboard players set raid_bar-08 factions.team 0
scoreboard players set raid_bar-09 factions.team 0
scoreboard players set raid_bar-10 factions.team 0
scoreboard players set raid_bar-11 factions.team 0
scoreboard players set raid_bar-12 factions.team 0
scoreboard players set raid_bar-13 factions.team 0
scoreboard players set raid_bar-14 factions.team 0
scoreboard players set raid_bar-15 factions.team 0

# ---- Raid Bars ----
bossbar add raid_bar-01 ""
bossbar add raid_bar-02 ""
bossbar add raid_bar-03 ""
bossbar add raid_bar-04 ""
bossbar add raid_bar-05 ""
bossbar add raid_bar-06 ""
bossbar add raid_bar-07 ""
bossbar add raid_bar-08 ""
bossbar add raid_bar-09 ""
bossbar add raid_bar-10 ""
bossbar add raid_bar-11 ""
bossbar add raid_bar-12 ""
bossbar add raid_bar-13 ""
bossbar add raid_bar-14 ""
bossbar add raid_bar-15 ""

bossbar add war_bar-01 ""
bossbar add war_bar-02 ""
bossbar add war_bar-03 ""
bossbar add war_bar-04 ""
bossbar add war_bar-05 ""
bossbar add war_bar-06 ""

# scoreboard players operation requires a source and sourceObjective
# So we make a scoreboard player '1' and set their factions.math value to '1'
# So we can do scoreboard players operations <targets> <targetObjective> -= 1 factions.math
scoreboard objectives add factions.math dummy
scoreboard players set 0 factions.math 0
scoreboard players set 1 factions.math 1
scoreboard players set 2 factions.math 2
scoreboard players set 3 factions.math 3
scoreboard players set 4 factions.math 4
scoreboard players set 5 factions.math 5
scoreboard players set 6 factions.math 6
scoreboard players set 7 factions.math 7
scoreboard players set 8 factions.math 8
scoreboard players set 9 factions.math 9
scoreboard players set 10 factions.math 10
scoreboard players set 11 factions.math 11
scoreboard players set 12 factions.math 12
scoreboard players set 13 factions.math 13
scoreboard players set 14 factions.math 14
scoreboard players set 15 factions.math 15

# ---- Respawn Timer ----
scoreboard objectives add respawn.dead deathCount
scoreboard objectives add respawn.timer dummy
# scoreboard player set <targets> <objective> <score>
# `default` is another player on the scoreboard
scoreboard players set default respawn.timer 100
gamerule doImmediateRespawn true

# ---- Complete ----
tellraw @a {"color":"green","text":"Factions loaded!"}
