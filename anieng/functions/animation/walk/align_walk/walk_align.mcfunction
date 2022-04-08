# moves the magical border -180/180 degrees, so that armor stand rotate always the shortest way. Direction of rotation can be controlled with ani_walk_rot_pos/neg
scoreboard players operation #isRot ani_ram = #rot ani_ram

execute if score #sollRot ani_ram matches 1.. run function anieng:animation/walk/align_walk/walk_align_pos
execute if score #sollRot ani_ram matches ..0 run function anieng:animation/walk/align_walk/walk_align_neg

execute if entity @s[tag=ani_walk_rot_pos] if score #rot ani_ram < #isRot ani_ram run scoreboard players add #rot ani_ram 360
execute if entity @s[tag=ani_walk_rot_neg] if score #rot ani_ram > #isRot ani_ram run scoreboard players remove #rot ani_ram 360

execute if entity @s[tag=ani_walk_back] run scoreboard players add #rot ani_ram 180

scoreboard players reset #isRot ani_ram
