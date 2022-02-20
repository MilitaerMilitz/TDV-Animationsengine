# [Debug function file running]
scoreboard players add debug ani_ram 1

# [Debug NBT Data]
data remove storage ani_debug data
data modify storage ani_debug data.StartData set from entity @e[tag=ani_sel_data,limit=1] data.StartData