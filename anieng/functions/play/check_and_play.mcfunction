# @s: ani_act
# pre: ani_sel_data exists
# do: Checks if keyframe is running and plays next keyframe if not
# return: void

# keyframe running = ...
function anieng:keyframe/util/check_keyframe_running

# if (keyframe running) play(); loadNext();
execute if score #free ani_ram matches 1 run function anieng:play/play_and_prepare_next

# clear()
scoreboard players reset #free ani_ram