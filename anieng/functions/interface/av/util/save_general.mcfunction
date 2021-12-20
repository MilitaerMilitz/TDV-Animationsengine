# call as ani_data marker

# reset previous stored action
data modify entity @s data.Action set value {}

# store that action is time walk
execute store result entity @s data.Action.id int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_action

function anieng:keyframe/util/create_startdata

# store TEE
execute store result score #teeBool ani_ram if score @e[tag=ani_sel_as,limit=1] ani_tee_x matches -2147483648.. if score @e[tag=ani_sel_as,limit=1] ani_tee_y matches -2147483648.. if score @e[tag=ani_sel_as,limit=1] ani_tee_z matches -2147483648..

execute if score #teeBool ani_ram matches 1 run data merge entity @s {data:{Tee:[0d,0d,0d]}}
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[0] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_x
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[1] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_y
execute if score #teeBool ani_ram matches 1 store result entity @s data.Tee[2] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_z

scoreboard players reset #teeBool ani_ram