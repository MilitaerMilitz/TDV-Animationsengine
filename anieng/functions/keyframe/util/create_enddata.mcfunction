# calculates EndData and stores it into storage ani_out
# needs StartData and Transition located in storage ani_in
# ani_in will be deleted at the end
# ani_out data.EndData as output

data modify storage ani_out data.EndData set from storage ani_in data.StartData

# Rotation
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Rotation
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Rotation
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Rotation int 1 run scoreboard players get #start ani_ram

# Head
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Head[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Head[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Head[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Head[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Head[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Head[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Head[2] float 1 run scoreboard players get #start ani_ram

# Body
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Body[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Body[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Body[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Body[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Body[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Body[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Body[2] float 1 run scoreboard players get #start ani_ram

# LeftArm
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftArm[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftArm[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftArm[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftArm[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftArm[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftArm[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftArm[2] float 1 run scoreboard players get #start ani_ram

# RightArm
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightArm[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightArm[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightArm[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightArm[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightArm[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightArm[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightArm[2] float 1 run scoreboard players get #start ani_ram

# LeftLeg
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftLeg[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftLeg[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftLeg[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftLeg[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.LeftLeg[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.LeftLeg[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.LeftLeg[2] float 1 run scoreboard players get #start ani_ram

# RightLeg
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[0]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightLeg[0]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightLeg[0] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[1]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightLeg[1]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightLeg[1] float 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.RightLeg[2]
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.RightLeg[2]
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.RightLeg[2] float 1 run scoreboard players get #start ani_ram

# Speeds
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Rotation
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Speed.Rotation
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Speed.Rotation int 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Hdbo
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Speed.Hdbo
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Speed.Hdbo int 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Arm
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Speed.Arm
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Speed.Arm int 1 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pose.Speed.Leg
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pose.Speed.Leg
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pose.Speed.Leg int 1 run scoreboard players get #start ani_ram

# Position
execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[0] 1000000
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pos[0] 1000000
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pos[0] double 0.000001 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[1] 1000000
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pos[1] 1000000
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pos[1] double 0.000001 run scoreboard players get #start ani_ram

execute store result score #start ani_ram run data get storage ani_in data.StartData.Pos[2] 1000000
execute store result score #trans ani_ram run data get storage ani_in data.Transition.Pos[2] 1000000
scoreboard players operation #start ani_ram += #trans ani_ram
execute store result storage ani_out data.EndData.Pos[2] double 0.000001 run scoreboard players get #start ani_ram

# clear()
scoreboard players reset #start ani_ram
scoreboard players reset #trans ani_ram
data remove storage ani_in data