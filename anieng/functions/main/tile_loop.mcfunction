# call as animation Armorstand, tiles have to be found

# Position
summon marker ~ ~ ~ {Tags:["ani_tmp"]}
summon marker ~ ~ ~ {Tags:["ani_tmp2"]}

teleport @e[tag=ani_tmp] @s
teleport @e[tag=ani_tmp2] @s
execute as @e[tag=ani_tmp] at @s run teleport @s ~ ~ ~ ~-90 ~
execute store result entity @e[tag=ani_tmp,limit=1] Rotation[1] float 1 run scoreboard players get @s ani_body_z
execute as @e[tag=ani_tmp2] at @e[tag=ani_tmp,limit=1] positioned ~ ~-0.75 ~ run teleport @s ^ ^0.75 ^

execute store result entity @e[tag=ani_tmp2,limit=1] Rotation[1] float 1 run scoreboard players get @s ani_body_x
execute as @e[tag=ani_sel_body] at @e[tag=ani_tmp2,limit=1] positioned ~ ~-0.75 ~ run teleport @s ^ ^0.75 ^

#execute as @e[tag=ani_debug] at @e[tag=ani_tmp2,limit=1] run teleport @s ^ ^ ^1

kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp2]

execute as @e[tag=ani_sel_head] run teleport @s @e[tag=ani_sel_body,limit=1]

# Pose
data modify entity @e[tag=ani_sel_body,limit=1] Pose set from entity @s Pose
data modify entity @e[tag=ani_sel_head,limit=1] Pose set from entity @s Pose
execute unless data entity @s Pose.Body as @e[tag=ani_sel_body] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if data entity @s Pose.Body as @e[tag=ani_sel_body] run data modify entity @e[tag=ani_sel_body,limit=1] Pose.Head set from entity @s Pose.Body

# Rotation
data modify entity @e[tag=ani_sel_body,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=ani_sel_head,limit=1] Rotation[0] set from entity @s Rotation[0]