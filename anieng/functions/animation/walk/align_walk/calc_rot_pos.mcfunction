# @s: no matter
# input: #rot ani_ram, #sollRot ani_ram
# do: If @s would moves negative this function adds 360 so that @s moves in positive direction
# return: #rot ani_ram

# sollRot -= 180
scoreboard players operation #sollRotHalf ani_ram = #sollRot ani_ram
scoreboard players remove #sollRotHalf ani_ram 180

# if (rot < sollRot) rot += 360
execute if score #rot ani_ram < #sollRotHalf ani_ram run scoreboard players add #rot ani_ram 360

# clear()
scoreboard players reset #sollRotHalf ani_ram