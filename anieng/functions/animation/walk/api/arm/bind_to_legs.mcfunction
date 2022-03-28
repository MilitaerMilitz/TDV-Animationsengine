# @s: ani_act
# manipulates: Pose.LeftArm.X, manipulates Pose.RightArm.X
# do: Bind arms to legs
# return: void

# left_arm_x = left_leg_x
scoreboard players operation #value ani_ram = @s ani_left_leg_x
function anieng:animation/move/instant/left_arm_x

# right_arm_x = right_leg_x
scoreboard players operation #value ani_ram = @s ani_right_leg_x
function anieng:animation/move/instant/right_arm_x