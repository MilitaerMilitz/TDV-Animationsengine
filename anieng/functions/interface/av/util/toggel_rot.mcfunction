function anieng:util/find_as
tag @e[tag=ani_sel_as,scores={ani_arwalk_rot=1}] add ani_toggel_rot
scoreboard players set @e[tag=ani_sel_as] ani_arwalk_rot 1
scoreboard players set @e[tag=ani_sel_as,tag=ani_toggel_rot] ani_arwalk_rot 0

tag @e[tag=ani_sel_as] remove ani_toggel_rot
tag @e[tag=ani_sel_as] remove ani_sel_as