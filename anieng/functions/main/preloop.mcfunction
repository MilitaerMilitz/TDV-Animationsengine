# back vanish check
execute as @e[tag=ani_data] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..1.5] run function anieng:util/kill_data
execute as @e[tag=ani_body] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s
execute as @e[tag=ani_head] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s

# check for sth. to animate
execute as @e[tag=ani_act,tag=!ani_pause,type=armor_stand] at @s run function anieng:main/mainloop

# glowing of selected Armorstands
execute as @e[tag=ani_glow,type=armor_stand] run effect give @s glowing 1 1 true

# Chek UI is activ
# UI set up
execute as @a[scores={ani_ram=1..}] at @s run setblock ~ -64 ~ oak_sign 


# Armorstand view
execute as @a[scores={ani_ram=100}] at @s run function anieng:interface/arm/armorstand_setings_view

# Pose View
execute as @a[scores={ani_ram=200}] at @s run function anieng:interface/pv/pose_view

# Action View
execute as @a[scores={ani_ram=300}] at @s run function anieng:interface/av/action_view

# Time Walk
execute as @a[scores={ani_ram=310}] at @s run function anieng:interface/av/tmw/action_tmw_view
execute as @a[scores={ani_ram=311}] at @s run function anieng:interface/av/tmw/action_tmw_saved

# Trader Walk
execute as @a[scores={ani_ram=320}] at @s run function anieng:interface/av/trw/action_trw_view
execute as @a[scores={ani_ram=321}] at @s run function anieng:interface/av/trw/action_trw_saved

# Align Walk
execute as @a[scores={ani_ram=330}] at @s run function anieng:interface/av/aw/action_aw_view
execute as @a[scores={ani_ram=331}] at @s run function anieng:interface/av/aw/action_aw_saved

# Rot Walk
execute as @a[scores={ani_ram=340}] at @s run function anieng:interface/av/rw/action_rw_view
execute as @a[scores={ani_ram=341}] at @s run function anieng:interface/av/rw/action_rw_saved

# Keyframe view
execute as @a[scores={ani_ram=400}] at @s run function anieng:interface/kfv/keyframe_view

# Deactivated keyframe view
execute as @a[scores={ani_ram=401}] at @s run function anieng:interface/kfv/keyframe_deactive


#UI corekt
execute as @a[scores={ani_ram=1..}] at @s run setblock ~ -64 ~ bedrock