# Put first Armor Stand UUID in #auuid0-3 ani_ram
# Call funtion as all ani_act
# After this function right Armorstand will have tag ani_edit_as

tag @s add ani_sel_act

execute store result score #tuuid0 ani_ram run data get entity @s Passengers[0].data.HeadUUID[0]
execute store result score #tuuid1 ani_ram run data get entity @s Passengers[0].data.HeadUUID[1]
execute store result score #tuuid2 ani_ram run data get entity @s Passengers[0].data.HeadUUID[2]
execute store result score #tuuid3 ani_ram run data get entity @s Passengers[0].data.HeadUUID[3]

execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_sel_act
execute unless score #tuuid1 ani_ram = #auuid1 ani_ram run tag @s remove ani_sel_act
execute unless score #tuuid2 ani_ram = #auuid2 ani_ram run tag @s remove ani_sel_act
execute unless score #tuuid3 ani_ram = #auuid3 ani_ram run tag @s remove ani_sel_act

# Clear Ram
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid1 ani_ram
scoreboard players reset #tuuid2 ani_ram
scoreboard players reset #tuuid3 ani_ram