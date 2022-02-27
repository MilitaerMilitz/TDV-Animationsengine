# @s: ani_data
# do: Prepares RAM for next keyframe by clearing RAM
# post: ani_act ani_action is now 2
# return: void

data modify entity @s data.StartData set from entity @s data.EndData
data modify entity @s data.Transition set value {}
data modify entity @s data.EndData set value {}
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_action 2
data modify entity @s data.Action set value {}
data modify entity @s data.Tee set value {}
