# @s: ani_act
# uses: manipulates @s ani_time_walk
# do: Decrease time_walk timer and stop walking if timer reached 0.
# return: void

# if (time_walk == null) time_walk = 0
execute unless score @s ani_time_walk matches -1.. run scoreboard players set @s ani_time_walk 0

# if (time_walk > 0) time_walk -= 1
execute if score @s ani_time_walk matches 1.. run scoreboard players remove @s ani_time_walk 1

# if (time_walk == 0) stopWalk()
execute if score @s ani_time_walk matches 0 run tag @s add ani_walk_end