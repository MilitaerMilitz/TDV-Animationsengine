# @s: ani_act
# pre: ani_in data.Action = {id: {}, static: {}, wspeed:{}, tbw:{}, narm:{}, ntep:{}, tit:{}} is valid tmw Action data
# pre: ani_in data.StartData is defined
# pre: #rot_s ani_ram is defined
# pre: #rot_speed ani_ram is defined
# do: Simulate time walk to calculate future end position.
# post: ani_out data.EndData is defined
# return: ani_out data.EndData

# if (ntep) return StartData;
execute store result score #ntep ani_ram run data get storage ani_in data.Action.ntep
execute if score #ntep ani_ram matches 0 run data modify storage ani_out data.EndData set from storage ani_in data.StartData

# else 
execute if score #ntep ani_ram matches 1 run function anieng:animation/walk/time_walk/simulation/simulate_2

# clear()
data remove storage ani_in data
scoreboard players reset #rot_s ani_ram
scoreboard players reset #rot_speed ani_ram
scoreboard players reset #ntep ani_ram