scoreboard players set #rot ani_ram 175
scoreboard players set #sollRot ani_ram 50

function anieng:animation/walk/align_walk/walk_align

tellraw @s ["","#rot: ",{"score":{"name":"#rot","objective":"ani_ram"}}]
tellraw @s ["","#sollRot: ",{"score":{"name":"#sollRot","objective":"ani_ram"}}]

scoreboard players reset #rot ani_ram
scoreboard players reset #sollRot ani_ram