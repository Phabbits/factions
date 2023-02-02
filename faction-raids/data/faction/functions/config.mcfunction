tellraw @s ["", {"text": "\n"}, {"text": "Erics Mine Mod", "color": "gold"}, {"text": " Madness", "color": "red"}]
tellraw @s ["", {"text": "\n"}, {"text": "Set raid base ", "clickEvent": {"action": "suggest_command", "value": "/trigger raid-base set "}, "hoverEvent": {"action": "show_text", "contents": "Select a base [1-15]"}}, {"text": "[1 to 15]", "color": "gray"}, {"text": " "}, {"score": {"name": "@s", "objective": "raid-base"}, "color": "red"}]
tellraw @s ["", {"text": "Update raid chest ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set <base> Raid_Chest <score>"}, "hoverEvent": {"action": "show_text", "contents": "Attack 1 base"}}]
tellraw @s ["", {"text": "Update base team ", "clickEvent": {"action": "suggest_command", "value": "/team join <color> <base>"}, "hoverEvent": {"action": "show_text", "contents": "Attack 1 base"}}]
tellraw @s ["", {"text": "Allow player to switch team ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players enable <player> join-X"}, "hoverEvent": {"action": "show_text", "contents": "Attack 1 base"}}]
tellraw @s ["", {"text": "Skip raid ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set raid_bar-XX factions.timer 1"}, "hoverEvent": {"action": "show_text", "contents": "Attack 1 base"}}]
tellraw @s ["", {"text": "Skip war ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set war_bar-XX factions.timer 1"}, "hoverEvent": {"action": "show_text", "contents": "Mutual attack between all bases"}}]
