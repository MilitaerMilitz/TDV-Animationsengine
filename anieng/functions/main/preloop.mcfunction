# back vanish check
execute as @e[tag=ani_data] at @s unless entity @e[tag=ani_act,distance=..1.5] run function anieng:util/kill_data
execute as @e[tag=ani_body] at @s unless entity @e[tag=ani_act,distance=..3] run kill @s
execute as @e[tag=ani_head] at @s unless entity @e[tag=ani_act,distance=..3] run kill @s

# check for sth. to animate
execute as @e[tag=ani_act,type=armor_stand] at @s run function anieng:main/mainloop

# check if pose view is visible and show it if so
execute as @a[scores={ani_ram=1}] at @s run function anieng:interface/pv/pose_view
execute as @a[scores={ani_ram=2}] at @s run function anieng:interface/av/action_view
execute as @a[scores={ani_ram=3}] at @s run function anieng:interface/kfv/keyframe_view

execute as @a[scores={ani_ram=4}] at @s run function anieng:interface/av/tmw/action_tmw_view
execute as @a[scores={ani_ram=5}] at @s run function anieng:interface/av/tmw/action_tmw_saved