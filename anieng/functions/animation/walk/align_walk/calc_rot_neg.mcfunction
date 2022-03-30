# @s: no matter
# input: #rot ani_ram, #sollRot ani_ram
# do: If @s would moves positive this function removes 360 so that @s moves in negative direction
# return: #rot ani_ram

# sollRot += 180
scoreboard players operation #sollRotHalf ani_ram = #sollRot ani_ram
scoreboard players add #sollRotHalf ani_ram 180

# if (rot < sollRot) rot -= 360
execute if score #rot ani_ram > #sollRotHalf ani_ram run scoreboard players remove #rot ani_ram 360

# clear()
scoreboard players reset #sollRotHalf ani_ram