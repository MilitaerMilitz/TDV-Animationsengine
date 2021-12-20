# exist check ani_act and ani_data are one unit, if one of them is killed the other part will vanish too.
function anieng:main/vanish_check

# check for sth. to animate
execute if entity @e[type=armor_stand,tag=ani_act] as @e[type=armor_stand,tag=ani_act] at @s run function anieng:main/loop

# check if pose view is visible and show it if so
execute as @a[scores={ani_ram=1}] at @s run function anieng:interface/pv/pose_view
execute as @a[scores={ani_ram=2}] at @s run function anieng:interface/av/action_view
execute as @a[scores={ani_ram=3}] at @s run function anieng:interface/kfv/keyframe_view

execute as @a[scores={ani_ram=4}] at @s run function anieng:interface/av/tmw/action_tmw_view
execute as @a[scores={ani_ram=5}] at @s run function anieng:interface/av/tmw/action_tmw_saved