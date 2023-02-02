# inv is everything that was in the player's inventory
# kept is what items remained (tools, armour) after clearing the inventory

# -1 gives the last index in the array
# If trying to set the current inventory value to the current kept value does not change anything or there is nothing in kept, then it will return 0
# If it does change, it will return 1
execute store success score .bool2 ps-keep run data modify storage ps:keep inv[-1] set from storage ps:keep kept[-1]
execute store success score .bool3 ps-keep run execute if data storage ps:keep kept[0]

# If this item was kept (or kept is empty), do not spawn it
# Stop checking for this kept item
execute if score .bool2 ps-keep matches 0 run data remove storage ps:keep kept[-1]
# Else, spawn the item
execute if score .bool2 ps-keep matches 1 run function ps-keep:spawn_next

# Remove item from both arrays if kept was not empty in initial check
execute if score .bool3 ps-keep matches 1 run data remove storage ps:keep inv[-1]
execute if score .bool3 ps-keep matches 1 run data remove storage ps:keep spawn[-1]

# If no more kept items are left in kept after after removing last one, spawn all remaining items
execute store success score .bool1 ps-keep run execute if data storage ps:keep kept[0]
execute if score .bool1 ps-keep matches 0 if data storage ps:keep spawn[0] run function ps-keep:spawn_all
execute if score .bool1 ps-keep matches 1 run function ps-keep:loop_through_inv
