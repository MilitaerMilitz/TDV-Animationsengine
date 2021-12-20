# summon Armorstand with data marker
summon armor_stand ~ ~ ~ {Silent:1b,ShowArms:1b,NoBasePlate:1b,Tags:["ani_act","ani_tmp"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},Passengers:[{id:"minecraft:marker",Tags:["ani_data","ani_tmp"],data:{}}]}

# setup
execute as @e[type=marker,tag=ani_tmp] run data modify entity @s data set value {Owner:{}, Keyframes:[], StartData:{}}
execute as @e[type=marker,tag=ani_tmp] run data modify entity @s data.Owner set from entity @e[type=armor_stand,tag=ani_tmp,sort=nearest,limit=1] UUID
execute as @e[type=armor_stand,tag=ani_tmp] at @s run function anieng:util/set_init_score

# define initial start
tag @e[type=armor_stand,tag=ani_tmp] add ani_sel_as
execute as @e[type=marker,tag=ani_tmp] at @s run function anieng:keyframe/util/create_startdata
tag @e[tag=ani_sel_as] remove ani_sel_as

# select
function anieng:interface/select_nearest

# remove spawn marks
tag @e[tag=ani_tmp] remove ani_tmp