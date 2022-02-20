# summon Armorstand with data marker
summon armor_stand ~ ~ ~ {Silent:1b,ShowArms:1b,NoBasePlate:1b,Tags:["ani_act","ani_sel_as"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},Passengers:[{id:"minecraft:marker",Tags:["ani_data","ani_sel_data"],data:{}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{},{}]}

# summon body tile
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["ani_body","ani_tile","ani_sel_body"],HandItems:[{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}]}

# summon head tile
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["ani_head","ani_tile","ani_sel_head"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}

# setup
data modify entity @e[tag=ani_sel_data,limit=1] data set value {Owner:{}, BodyUUID:{}, HeadUUID:{}, Keyframes:[], StartData:{}, Transition:{}, EndData:{}, Action:{}, Tee:{}}
data modify entity @e[tag=ani_sel_data,limit=1] data.Owner set from entity @e[tag=ani_sel_as,limit=1] UUID
data modify entity @e[tag=ani_sel_data,limit=1] data.BodyUUID set from entity @e[tag=ani_sel_body,limit=1] UUID
data modify entity @e[tag=ani_sel_data,limit=1] data.HeadUUID set from entity @e[tag=ani_sel_head,limit=1] UUID
execute as @e[tag=ani_sel_as] at @s run function anieng:util/set_init_score_if_unset

# define StartData
execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/util/create_snapshot
data modify entity @e[tag=ani_sel_data,limit=1] data.StartData set from storage ani_out data.Snap
data remove storage ani_out data

# create initial keyframe
execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/create_keyframe

# remove spawn marks
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_head] remove ani_sel_head

# select
function anieng:interface/select_nearest