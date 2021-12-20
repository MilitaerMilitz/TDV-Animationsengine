# call as ani_data marker

execute if score @e[tag=ani_sel_asm,limit=1] ani_action matches 2 run function anieng:keyframe/util/create_startdata

# build keyframe
data merge storage minecraft:ani_ram {data:{}}
execute store result storage ani_ram data.Frame int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_keyam
data modify storage ani_ram data.Action set from entity @s data.Action
data modify storage ani_ram data.StartData set from entity @s data.StartData
execute if data entity @s data.Tee run data modify storage ani_ram data.Tee set from entity @s data.Tee

# score stuff
scoreboard players add @e[tag=ani_sel_as,limit=1] ani_keyam 1
scoreboard players add @e[tag=ani_sel_as,limit=1] ani_selkey 1

# append ready build keyframe
data modify entity @s data.Keyframes append from storage ani_ram data
data remove storage ani_ram data

# set StartData for next Frame
function anieng:keyframe/util/create_startdata