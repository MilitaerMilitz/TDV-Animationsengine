# @s: ani_act
# manipulates: Pose.LeftLeg.X if tag=!ani_walk_abort
# manipulates: Pose.LeftArm.X if tag=!ani_walk_abort,tag=!ani_walk_narm
# do: Stop walking normally
# return: void

# if (tag == trader_walk || align_walk) end()
execute if entity @s[tag=ani_trader_walk] run function anieng:animation/walk/trader_walk/trader_walk_end
execute if entity @s[tag=ani_align_walk] run function anieng:animation/walk/align_walk/end

# if (tag != walk_abort) resetLegs(); resetArms() if !narm
execute unless entity @s[tag=ani_walk_abort] run scoreboard players set @s ani_left_leg_x_s 0
execute unless entity @s[tag=ani_walk_abort] run scoreboard players set @s ani_rigt_leg_x_s 0
execute unless entity @s[tag=ani_walk_narm] unless entity @s[tag=ani_walk_abort] run function anieng:animation/walk/api/arm/reset_position

# if (tag != walk_mod && walk_abort) Rotation[0] %= 360
execute unless entity @s[tag=ani_walk_nmod] unless entity @s[tag=ani_walk_abort] run function anieng:util/modulo_360_rot

# actionRunning = false
scoreboard players set @s ani_run 0

# tagClear()
tag @s remove ani_walk
tag @s remove ani_walk_pos
tag @s remove ani_walk_narm
tag @s remove ani_walk_end
tag @s remove ani_walk_abort
tag @s remove ani_walk_nmod
tag @s remove ani_walk_back
tag @s remove ani_walk_ntep
tag @s remove ani_time_walk