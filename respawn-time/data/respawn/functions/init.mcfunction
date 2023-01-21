scoreboard objectives add respawn.dead deathCount
scoreboard objectives add respawn.timer dummy
scoreboard objectives add respawn.math dummy
# scoreboard player set <targets> <objective> <score>
scoreboard players set 1 respawn.math 1
scoreboard players set 0 respawn.math 0
# `time` is another player on the scoreboard
scoreboard players set time respawn.timer 100
tellraw @a {"color":"green","text":"Respawn timer loaded!"}
gamerule doImmediateRespawn true
