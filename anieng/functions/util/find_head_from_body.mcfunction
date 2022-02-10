# Call function as leg Armorstand
# Actor Armorstand have to be found
# After this function right Armorstand will have tag ani_sel_head
# Clears Ram automatically

execute store result score #auuid0 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.HeadUUID[0]
execute store result score #auuid1 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.HeadUUID[1]
execute store result score #auuid2 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.HeadUUID[2]
execute store result score #auuid3 ani_ram run data get entity @e[tag=ani_sel_act,limit=1] Passengers[0].data.HeadUUID[3]

execute as @e[tag=ani_act,tag=ani_head,tag=!ani_body,type=armor_stand] run function anieng:util/find_head_from_body_rek

# Clear Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram