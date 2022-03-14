function anieng:util/find_as
tag @e[tag=ani_sel_as,scores={ani_walk_narm=1}] add ani_toggel_narm
scoreboard players set @e[tag=ani_sel_as] ani_walk_narm 1
scoreboard players set @e[tag=ani_sel_as,tag=ani_toggel_narm] ani_walk_narm 0
tag @e[tag=ani_sel_as] remove ani_toggel_narm
tag @e[tag=ani_sel_as] remove ani_sel_as
