# calculates Transition and stores it into storage ani_out
# needs StartData and EndData located in storage ani_in
# ani_in will be deleted at the end

data modify storage ani_out data.Transition set from storage ani_in data.EndData

# Rotation
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Rotation
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Rotation
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Rotation int 1 run scoreboard players get #end ani_ram

# Head
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Head[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Head[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Head[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Head[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Head[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Head[2] float 1 run scoreboard players get #end ani_ram

# Body
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Body[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Body[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Body[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Body[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Body[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Body[2] float 1 run scoreboard players get #end ani_ram

# LeftArm
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftArm[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftArm[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftArm[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftArm[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftArm[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftArm[2] float 1 run scoreboard players get #end ani_ram

# RightArm
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightArm[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightArm[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightArm[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightArm[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightArm[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightArm[2] float 1 run scoreboard players get #end ani_ram

# LeftLeg
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftLeg[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftLeg[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftLeg[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftLeg[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.LeftLeg[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.LeftLeg[2] float 1 run scoreboard players get #end ani_ram

# RightLeg
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[0]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightLeg[0]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightLeg[0] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[1]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightLeg[1]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightLeg[1] float 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[2]
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.RightLeg[2]
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.RightLeg[2] float 1 run scoreboard players get #end ani_ram

# Speeds
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Rotation
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Speed.Rotation
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Speed.Rotation int 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Hdbo
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Speed.Hdbo
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Speed.Hdbo int 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Arm
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Speed.Arm
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Speed.Arm int 1 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Leg
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pose.Speed.Leg
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pose.Speed.Leg int 1 run scoreboard players get #end ani_ram

# Position
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[0] 1000000
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pos[0] 1000000
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pos[0] double 0.000001 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[1] 1000000
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pos[1] 1000000
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pos[1] double 0.000001 run scoreboard players get #end ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[2] 1000000
execute store result score #end ani_ram run data get storage ani_in data.EndData.Pos[2] 1000000
scoreboard players operation #end ani_ram -= #start ani_ram
execute store result storage ani_out data.Transition.Pos[2] double 0.000001 run scoreboard players get #end ani_ram

# clear
scoreboard players reset #end ani_ram
scoreboard players reset #start ani_ram
data remove storage ani_in data