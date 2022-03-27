# @s: ani_act
# do: Stores time walk data
# return: ani_out data := Action data of tmw

# store that action is time walk
data merge storage ani_out {data:{id:{}, static: 0b, wspeed:{}, tbw:{}, narm:{}, ntep:{}, tit:{}}}
data modify storage ani_out data.id set value 311
execute store result storage ani_out data.wspeed short 1 run scoreboard players get @s ani_walk_speed
execute store result storage ani_out data.tbw byte 1 run scoreboard players get @s ani_walk_tbw
execute store result storage ani_out data.narm byte 1 run scoreboard players get @s ani_walk_narm
execute store result storage ani_out data.ntep byte 1 run scoreboard players get @s ani_walk_ntep
execute store result storage ani_out data.tit int 1 run scoreboard players get @s ani_time_walk