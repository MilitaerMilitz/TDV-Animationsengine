# call as animation Armorstand

execute if entity @s[tag=ani_trader_walk] run function anieng:animation/walk/trader_walk/trader_walk_end
execute if entity @s[tag=ani_align_walk] run function anieng:animation/walk/align_walk/end

# reset positions
execute unless entity @s[tag=ani_walk_stop] run scoreboard players set @s ani_left_leg_x_s 0
execute unless entity @s[tag=ani_walk_stop] run scoreboard players set @s ani_rigt_leg_x_s 0
execute unless entity @s[tag=ani_walk_narm] unless entity @s[tag=ani_walk_stop] run function anieng:animation/walk/api/arm/reset_position

# mod reset
execute unless entity @s[tag=ani_walk_nmod] unless entity @s[tag=ani_walk_stop] run function anieng:util/modulo_360_rot

# mark action not anymore running
scoreboard players set @s ani_run 0

# tag management
tag @s remove ani_walk
tag @s remove ani_walk_pos
tag @s remove ani_walk_narm
tag @s remove ani_walk_end
tag @s remove ani_walk_stop
tag @s remove ani_walk_nmod
tag @s remove ani_walk_back
tag @s remove ani_walk_ntep
tag @s remove ani_time_walk