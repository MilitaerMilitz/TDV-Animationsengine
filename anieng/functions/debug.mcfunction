# [Debug function file running]
scoreboard players add debug ani_ram 1

# [Debug score]
scoreboard players operation @s frame = #var ani_ram

# [Debug NBT Data]
data remove storage ani_debug data
data modify storage ani_debug data set from entity storage data