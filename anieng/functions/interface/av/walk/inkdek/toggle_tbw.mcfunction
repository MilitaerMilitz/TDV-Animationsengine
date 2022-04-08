function anieng:util/find_as
tag @e[tag=ani_sel_as,scores={ani_walk_tbw=1}] add ani_toggel_tbw
scoreboard players set @e[tag=ani_sel_as] ani_walk_tbw 1
scoreboard players set @e[tag=ani_sel_as,tag=ani_toggel_tbw] ani_walk_tbw 0
tag @e[tag=ani_sel_as] remove ani_toggel_tbw
tag @e[tag=ani_sel_as] remove ani_sel_as
