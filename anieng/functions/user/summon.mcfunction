# summon Armorstand with data marker
summon armor_stand ~ ~ ~ {Silent:1b,ShowArms:1b,NoBasePlate:1b,Tags:["ani_act","ani_sel_as"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},Passengers:[{id:"minecraft:marker",Tags:["ani_data","ani_sel_data"],data:{}}]}

# setup
execute as @e[tag=ani_sel_data] run data modify entity @s data set value {Owner:{}, Keyframes:[], StartData:{}, Transition:{}, EndData:{}, Action:{}, Tee:{}}
execute as @e[tag=ani_sel_data] run data modify entity @s data.Owner set from entity @e[tag=ani_sel_as,limit=1] UUID
execute as @e[tag=ani_sel_as] at @s run function anieng:util/set_init_score

# define initial start
execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/util/create_snapshot
data modify entity @e[tag=ani_sel_data,limit=1] data.StartData set from storage ani_out data.Snap
data remove storage ani_out data

# create initial keyfrane
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/create_keyframe

# remove spawn marks
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data

# select
function anieng:interface/select_nearest