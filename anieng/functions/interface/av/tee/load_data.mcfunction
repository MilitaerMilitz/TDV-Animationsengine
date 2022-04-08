# @s: @ip
# pre: ani_sel_as exists
# do: Load tee data into ram
# return: void

execute if score @e[tag=ani_sel_as,limit=1] ani_tee_x matches -2147483648.. run scoreboard players operation @s ani_tee_x = @e[tag=ani_sel_as,limit=1] ani_tee_x
execute if score @e[tag=ani_sel_as,limit=1] ani_tee_y matches -2147483648.. run scoreboard players operation @s ani_tee_y = @e[tag=ani_sel_as,limit=1] ani_tee_y
execute if score @e[tag=ani_sel_as,limit=1] ani_tee_z matches -2147483648.. run scoreboard players operation @s ani_tee_z = @e[tag=ani_sel_as,limit=1] ani_tee_z