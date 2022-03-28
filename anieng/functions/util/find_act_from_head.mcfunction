# Call function as leg Armorstand
# After this function right Armorstand will have tag ani_sel_act
# clear()s Ram automatically

execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]

execute as @e[tag=ani_act,tag=!ani_body,tag=!ani_head,type=armor_stand,distance=..3] run function anieng:util/find_act_from_head_rek

# clear() Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram