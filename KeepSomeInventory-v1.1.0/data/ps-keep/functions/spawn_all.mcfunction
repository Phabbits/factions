# Spawn the item
function ps-keep:spawn_next

# Remove item from spawn list and continue
data remove storage ps:keep spawn[-1]
execute if data storage ps:keep spawn[0] run function ps-keep:spawn_all
