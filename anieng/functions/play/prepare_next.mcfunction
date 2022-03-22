# @s: ani_act
# pre: ani_sel_data exists
# do: prepares next kexframe
# return: void

# selkey++
scoreboard players add @s ani_selkey 1

# if (selkey <= keyam) loadKeyframe(); execute();
execute if score @s ani_selkey <= @s ani_keyam as @e[tag=ani_sel_data] run function anieng:keyframe/util/search_keyframe
execute if score @s ani_selkey <= @s ani_keyam run function anieng:keyframe/execute/execute_current_keyframe