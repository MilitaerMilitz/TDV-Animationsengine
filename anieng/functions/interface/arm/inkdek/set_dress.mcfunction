function anieng:util/find_as

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_tiles_from_act

execute if data entity @s {Inventory:[{Slot:103b}]} run item replace entity @e[tag=ani_sel_head,limit=1] armor.head from entity @s armor.head
execute if data entity @s {Inventory:[{Slot:102b}]} run item replace entity @e[tag=ani_sel_body,limit=1] armor.chest from entity @s armor.chest
execute if data entity @s {Inventory:[{Slot:101b}]} run item replace entity @e[tag=ani_sel_as,limit=1] armor.legs from entity @s armor.legs
execute if data entity @s {Inventory:[{Slot:100b}]} run item replace entity @e[tag=ani_sel_as,limit=1] armor.feet from entity @s armor.feet

item replace entity @e[tag=ani_sel_head,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[tag=ani_sel_head,limit=1] weapon.offhand from entity @s weapon.offhand

# clear() 
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_head] remove ani_sel_head
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_as] remove ani_sel_as