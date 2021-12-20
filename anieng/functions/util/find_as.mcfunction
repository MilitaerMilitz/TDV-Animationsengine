# Call funtiocn as player
# After this function right Armorstand will have tag ani_sel_as
# Clears Ram automatically

scoreboard players operation #auuid0 ani_ram = @s ani_if_sel_u0
scoreboard players operation #auuid1 ani_ram = @s ani_if_sel_u1
scoreboard players operation #auuid2 ani_ram = @s ani_if_sel_u2
scoreboard players operation #auuid3 ani_ram = @s ani_if_sel_u3

execute as @e[tag=ani_act,type=armor_stand] run function anieng:util/find_as_rek

execute unless entity @e[tag=ani_sel_as] run title @s times 0 40 0
execute unless entity @e[tag=ani_sel_as] run title @s subtitle {"text":"No Armorstand selected.","color":"red","bold":true}
execute unless entity @e[tag=ani_sel_as] run title @s title ""

# Clear Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram