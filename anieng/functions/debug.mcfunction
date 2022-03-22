# [Debug entity exists]
execute as @e[tag=ani_debug] run say hi

# [Debug function file running]
scoreboard players add debug ani_ram 1

# [Debug score]
scoreboard players operation @s frame = #var ani_ram

# [Debug score]
tellraw @p {"score":{"name":"@s","objective":"ani_debug"}}

# [Debug NBT Data]
data remove storage ani_debug data
data modify storage ani_debug data set from entity storage data

# [Debug NBT Data]
tellraw @p {"nbt":"data","storage":"ani_debug"}