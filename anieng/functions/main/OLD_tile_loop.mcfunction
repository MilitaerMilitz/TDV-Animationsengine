# call as tile (head or body)

# find all needed entities
execute if entity @s[tag=ani_body] run function anieng:util/find_act_from_body
execute if entity @s[tag=ani_head] run function anieng:util/find_act_from_head
execute if entity @s[tag=ani_head] run function anieng:util/find_body_from_head

# Position
summon marker ~ ~ ~ {Tags:["ani_tmp"]}
summon marker ~ ~ ~ {Tags:["ani_tmp2"]}

teleport @e[tag=ani_tmp] @e[tag=ani_sel_act,limit=1]
execute as @e[tag=ani_tmp] at @s run teleport @s ~ ~ ~ ~-90 ~
execute as @e[tag=ani_tmp] run execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[tag=ani_sel_act,limit=1] ani_body_z_s
execute as @e[tag=ani_tmp2] at @e[tag=ani_tmp,limit=1] positioned ~ ~-0.75 ~ run teleport @s ^ ^0.75 ^

execute as @e[tag=ani_tmp2] run execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[tag=ani_sel_act,limit=1] ani_body_x_s
execute if entity @s[tag=ani_body] at @e[tag=ani_tmp2,limit=1] positioned ~ ~-0.75 ~ run teleport @s ^ ^0.75 ^

execute as @e[tag=ani_debug] at @e[tag=ani_tmp,limit=1] run teleport @s ^ ^ ^1

kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp2]

execute if entity @s[tag=ani_head] run teleport @s @e[tag=ani_sel_body,limit=1]

# Pose
data modify entity @s Pose set from entity @e[tag=ani_sel_act,limit=1] Pose

# NOT FIXED
execute if entity @s[tag=ani_body] store result storage ani_in data.Pose.Head[0] float 1 run scoreboard players get @e[tag=ani_sel_act,limit=1] ani_body_x_s
execute if entity @s[tag=ani_body] store result storage ani_in data.Pose.Head[1] float 1 run scoreboard players get @e[tag=ani_sel_act,limit=1] ani_body_y_s
execute if entity @s[tag=ani_body] store result storage ani_in data.Pose.Head[2] float 1 run scoreboard players get @e[tag=ani_sel_act,limit=1] ani_body_z_s

# Clear
tag @e[tag=ani_sel_act] remove ani_sel_act
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_head] remove ani_sel_head