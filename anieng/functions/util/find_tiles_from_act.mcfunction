# Call function as animation Armorstand
# After this function right Armorstands will have tag ani_sel_body, ani_sel_head, ani_sel_data
# Clears Ram automatically

execute store result score #auuid0 ani_ram run data get entity @s Passengers[0].data.BodyUUID[0]
execute store result score #auuid1 ani_ram run data get entity @s Passengers[0].data.BodyUUID[1]
execute store result score #auuid2 ani_ram run data get entity @s Passengers[0].data.BodyUUID[2]
execute store result score #auuid3 ani_ram run data get entity @s Passengers[0].data.BodyUUID[3]

execute as @e[tag=ani_body,type=armor_stand,sort=nearest,distance=..3] at @s run function anieng:util/find_body_from_act_rek

execute store result score #auuid0 ani_ram run data get entity @s Passengers[0].data.HeadUUID[0]
execute store result score #auuid1 ani_ram run data get entity @s Passengers[0].data.HeadUUID[1]
execute store result score #auuid2 ani_ram run data get entity @s Passengers[0].data.HeadUUID[2]
execute store result score #auuid3 ani_ram run data get entity @s Passengers[0].data.HeadUUID[3]

execute as @e[tag=ani_head,type=armor_stand,sort=nearest,distance=..3] at @s run function anieng:util/find_head_from_act_rek

execute store result score #auuid0 ani_ram run data get entity @s Passengers[0].data.Owner[0]
execute store result score #auuid1 ani_ram run data get entity @s Passengers[0].data.Owner[1]
execute store result score #auuid2 ani_ram run data get entity @s Passengers[0].data.Owner[2]
execute store result score #auuid3 ani_ram run data get entity @s Passengers[0].data.Owner[3]

execute as @e[tag=ani_data,type=armor_stand,sort=nearest,distance=..3] at @s run function anieng:util/find_data_rek

# Clear Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram