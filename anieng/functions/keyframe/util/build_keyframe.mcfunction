# call as ani_data marker
# build keyframe and saves it into ani_out
# frame id is equal to ani_selkey

data merge storage minecraft:ani_out {data:{}}
execute store result storage ani_out data.Frame int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_selkey
data modify storage ani_out data.Action set from entity @s data.Action
data modify storage ani_out data.StartData set from entity @s data.StartData
execute if data entity @s data.Tee run data modify storage ani_out data.Tee set from entity @s data.Tee