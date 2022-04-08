# @s: ani_data
# pre: S_old == S_new
# do: Saves edited keyframe into selected
# return: void

# equal = S_old == S_new
data modify storage ani_in data.nbt1 set from entity @s data.StartData
data modify storage ani_in data.nbt2 set from entity @s data.Keyframes[0].StartData
function anieng:util/nbt_equal
scoreboard players operation #equalPre ani_ram = #equal ani_ram
scoreboard players reset #equal ani_ram

# if (equal) saveKeyframe()
execute if score #equalPre ani_ram matches 1 run function anieng:keyframe/save_keyframe
execute if score #equalPre ani_ram matches 0 run title @p times 0 40 0
execute if score #equalPre ani_ram matches 0 run title @p subtitle {"text":"Error: StartData_old != StartData_new","color":"red","bold":true}
execute if score #equalPre ani_ram matches 0 run title @p title ""