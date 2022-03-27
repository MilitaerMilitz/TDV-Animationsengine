# @s: ani_act
# pre: ani_sel_data exists
# do: Removes ani_play tag and loads first keyframe if ani_loop is selected.
# return: void

# if (tag == ani_play_one) remove(ani_play_one)
execute if entity @s[tag=ani_play_one] run tag @s remove ani_play_one

# if (tag == ani_play_one || !ani_loop) remove(ani_play)
execute if entity @s[tag=ani_play_one] run tag @s remove ani_play
execute if entity @s[tag=!ani_loop] run tag @s remove ani_play

# if (tag == ani_loop) selkey = 1; loadKeyframe();
execute if entity @s[tag=ani_loop] run execute as @e[tag=ani_sel_as] if score @s ani_keyam matches 1.. run scoreboard players set @s ani_selkey 1
execute if entity @s[tag=ani_loop] run execute as @e[tag=ani_sel_data] if score @e[tag=ani_sel_as,limit=1] ani_keyam matches 1.. run function anieng:keyframe/load_keyframe