advancement revoke @s only ps-keep:on_death
scoreboard players reset @s ps-keep

# ps:keep is "Resource location" used to avoid conflicts, namespace ps, path keep
# data modify storage <source> <targetPath> set from <source <sourcePath>
# spawn is an array that is filled with the items in the inventory
execute if score keep_items[0|1|2] ps-keep.config matches 0..1 run data modify storage ps:keep spawn set from entity @s Inventory
execute if score keep_items[0|1|2] ps-keep.config matches 0 run clear @s
execute if score keep_items[0|1|2] ps-keep.config matches 1 run clear @s #ps-keep:drop_on_death
execute if score keep_items[0|1|2] ps-keep.config matches 1 run data modify storage ps:keep inv set from storage ps:keep spawn
execute if score keep_items[0|1|2] ps-keep.config matches 1 run data modify storage ps:keep kept set from entity @s Inventory
execute if score keep_items[0|1|2] ps-keep.config matches 0 run function ps-keep:spawn_all
execute if score keep_items[0|1|2] ps-keep.config matches 1 run function ps-keep:loop_through_inv
execute if score keep_experience[0|1] ps-keep.config matches 0 run function ps-keep:drop_xp
