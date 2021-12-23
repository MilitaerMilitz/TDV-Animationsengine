# call as ani_data marker

# execute Pose animation
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/construct_pose
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/load_startdata
data modify entity @s data.Ram.Pose set from storage ani_out data.Pose
data modify storage ani_in data.Pose set from storage ani_out data.Pose
scoreboard players set #animate ani_ram 1
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose

# reset previous stored action
data modify entity @s data.Action set value {}

# store that action is time walk
execute store result entity @s data.Action.id int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_action

# store TEE
execute store result score #teeBool ani_ram if score @e[tag=ani_sel_as,limit=1] ani_tee_x matches -2147483648.. if score @e[tag=ani_sel_as,limit=1] ani_tee_y matches -2147483648.. if score @e[tag=ani_sel_as,limit=1] ani_tee_z matches -2147483648..

execute if score #teeBool ani_ram matches 1 run data merge entity @s {data:{Tee:[0d,0d,0d]}}
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[0] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_x
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[1] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_y
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[2] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_z

# clear
scoreboard players reset #teeBool ani_ram
data remove storage ani_out data