scoreboard players operation #sollRotHalf ani_ram = #sollRot ani_ram
scoreboard players add #sollRotHalf ani_ram 180

execute if score #rot ani_ram > #sollRotHalf ani_ram run scoreboard players remove #rot ani_ram 360

scoreboard players reset #sollRotHalf ani_ram