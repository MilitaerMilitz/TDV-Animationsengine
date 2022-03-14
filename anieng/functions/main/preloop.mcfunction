# back vanish check
execute as @e[tag=ani_data] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..1.5] run function anieng:util/kill_data
execute as @e[tag=ani_body] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s
execute as @e[tag=ani_head] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s

# check for sth. to animate
execute as @e[tag=ani_act,type=armor_stand] at @s run function anieng:main/mainloop

# Chek UI is activ
# UI set up
execute as @a[scores={ani_ram=1..}] at @s run setblock ~ -64 ~ oak_sign 


# check if pose view is visible and show it if so
execute as @a[scores={ani_ram=1}] at @s run function anieng:interface/pv/pose_view
execute as @a[scores={ani_ram=2}] at @s run function anieng:interface/av/action_view
execute as @a[scores={ani_ram=3}] at @s run function anieng:interface/kfv/keyframe_view


# Time Walk
execute as @a[scores={ani_ram=4}] at @s run function anieng:interface/av/tmw/action_tmw_view
execute as @a[scores={ani_ram=5}] at @s run function anieng:interface/av/tmw/action_tmw_saved

execute as @a[scores={ani_ram=210}] at @s run function anieng:interface/av/tmw/action_tmw_view

# 6 -> align_walk_view
# 7 -> align_walk_saved
execute as @a[scores={ani_ram=220}] at @s run function anieng:interface/av/tmw/action_tmw_view

# 10 -> trader_walk_view
# 11 -> trader_walk_saved
execute as @a[scores={ani_ram=230}] at @s run function anieng:interface/av/tmw/action_tmw_view

# 8 -> rot_walk_view
# 9 -> rot_walk_saved
execute as @a[scores={ani_ram=240}] at @s run function anieng:interface/av/tmw/action_tmw_view

#UI corekt
execute as @a[scores={ani_ram=1..}] at @s run setblock ~ -64 ~ bedrock