# Call function as leg Armorstand
# Actor Armorstand have to be found
# After this function right Armorstand will have tag ani_sel_body
# clear()s Ram automatically

execute store result score #auuid0 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.BodyUUID[0]
execute store result score #auuid1 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.BodyUUID[1]
execute store result score #auuid2 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.BodyUUID[2]
execute store result score #auuid3 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.BodyUUID[3]

execute as @e[tag=ani_body,type=armor_stand,distance=..3] run function anieng:util/find_body_from_head_rek

# clear() Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram