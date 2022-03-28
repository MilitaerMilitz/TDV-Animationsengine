kill @e[tag=ani_act]
kill @e[tag=ani_chicken]

# back vanish check
execute as @e[tag=ani_data] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..1.5] run function anieng:util/kill_data
execute as @e[tag=ani_body] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s
execute as @e[tag=ani_head] at @s unless entity @e[tag=ani_act,scores={ani_vtout=0..}] unless entity @e[tag=ani_act,distance=..3] run kill @s

summon chicken ~ ~ ~ {NoAI:1b,Tags:["ani_chicken"],NoGravity:1b}
execute as @p positioned 212.50 64.00 -303.50 run function anieng:user/summon
tag @e[tag=ani_act] add ani_sel_as

execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

data modify entity @e[tag=ani_sel_data,limit=1] data merge value {EndData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}, Keyframes: [{EndData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}, Frame: 1, Action: {}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 0.0d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 0, Leg: 0}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}, {EndData: {Pos: [212.5d, 64.0d, -299.4999999999991d], Pose: {RightArm: [0.0f, 0.0f, 10.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 4, Leg: 4}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, -10.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: -90}}, Frame: 2, Action: {ntep: 1b, static: 0b, tbw: 0b, wspeed: 3s, id: 311, narm: 0b, tit: 40}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 4.0d], Pose: {RightArm: [0.0f, 0.0f, 10.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 3, Leg: 3}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, -10.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}], Action: {}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 0.0d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 0, Leg: 0}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}

#summon minecraft:armor_stand 212.50 64.00 -303.50 {Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 0.699999988079071d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}], Invulnerable: 0b, FallFlying: 0b, ShowArms: 1b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 0, DeathTime: 0s, Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f]}, Invisible: 0b, Tags: ["ani_act", "ani_sel_as"], Motion: [0.0d, -0.0784000015258789d, 0.0d], Small: 0b, Health: 20.0f, Silent: 1b, Air: 300s, OnGround: 1b, Rotation: [0.0f, 0.0f], HandItems: [{}, {}], Passengers: [{Motion: [0.0d, 0.0d, 0.0d], data: {EndData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}, Owner: [I; 1251132967, -1294579801, -1520339156, 1524740029], HeadUUID: [I; 660160635, 230181109, -1402656920, -1903204507], Keyframes: [{EndData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}, Frame: 1, Action: {}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 0.0d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 0, Leg: 0}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}, {EndData: {Pos: [212.5d, 64.0d, -299.4999999999991d], Pose: {RightArm: [0.0f, 0.0f, 10.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 4, Leg: 4}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, -10.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}, Frame: 2, Action: {ntep: {}, static: 0b, tbw: 0b, wspeed: 4s, id: 5, narm: 1b, tit: 40}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 4.0d], Pose: {RightArm: [0.0f, 0.0f, 10.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 3, Leg: 3}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, -10.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}], Action: {}, Tee: {}, Transition: {Pos: [0.0d, 0.0d, 0.0d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 0, Rotation: 0, Arm: 0, Leg: 0}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0}}, BodyUUID: [I; 971030759, -506377523, -1942111121, -1077138895], StartData: {Pos: [212.5d, 64.0d, -303.5d], Pose: {RightArm: [0.0f, 0.0f, 0.0f], LeftLeg: [0.0f, 0.0f, 0.0f], Speed: {Hdbo: 1, Rotation: 1, Arm: 1, Leg: 1}, Head: [0.0f, 0.0f, 0.0f], LeftArm: [0.0f, 0.0f, 0.0f], RightLeg: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f], Rotation: 0.0f}}}, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, Pos: [212.5d, 65.4812500178814d, -303.5d], Fire: 0s, id: "minecraft:marker", UUID: [I; -1614764408, -542619380, -1436986377, -186631528], Tags: ["ani_data"]}], Fire: -1s, ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {Damage: 0}}, {}, {}], NoBasePlate: 1b, HurtTime: 0s}

data modify storage ani_in data.Action set from entity @e[tag=ani_sel_as,limit=1] Passengers[0].data.Keyframes[1].Action
data modify storage ani_in data.StartData set from entity @e[tag=ani_sel_as,limit=1] Passengers[0].data.Keyframes[1].StartData

execute store result score #rot_s ani_ram run data get entity @e[tag=ani_sel_as,limit=1] Passengers[0].data.Keyframes[1].EndData.Pose.Rotation
execute store result score #rot_speed ani_ram run data get entity @e[tag=ani_sel_as,limit=1] Passengers[0].data.Keyframes[1].EndData.Pose.Speed.Rotation

# [Debug NBT Data]
#tellraw @p {"nbt":"data.Action","storage":"ani_in"}

execute as @e[tag=ani_sel_as] at @s run function anieng:animation/walk/time_walk/simulation/simulate

# [Debug NBT Data]
tellraw @p {"nbt":"data","storage":"ani_out"}

summon area_effect_cloud ~ ~ ~ {Tags:["ani_tmp"]}
data modify entity @e[tag=ani_tmp,limit=1] Pos set from storage ani_out data.EndData.Pos
data modify entity @e[tag=ani_tmp,limit=1] Rotation set from storage ani_out data.EndData.Pose.Rotation

teleport @e[tag=ani_chicken] @e[tag=ani_tmp,limit=1]

kill @e[tag=ani_tmp]

execute as @e[tag=ani_sel_data,limit=1] run data modify entity @s data.Action set from entity @s data.Keyframes[1].Action

scoreboard players set @e[tag=ani_sel_as] ani_selkey 2
scoreboard players set @e[tag=ani_sel_as] ani_keyam 3
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/util/search_keyframe
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/util/load_keyframe_into_ram

tag @e[tag=ani_sel_data] remove ani_sel_data

execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/execute/execute_current_keyframe
tag @e[tag=ani_sel_as] remove ani_sel_as
