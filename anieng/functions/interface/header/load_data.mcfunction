# @s: @ip
# pre: ani_sel_as exists
# do: Load header numbers into textram
# return: void

scoreboard players operation #value ani_ram = @s ani_if_summand
function anieng:util/text/form_num_len2

scoreboard players operation @s ani_keyam = @e[tag=ani_sel_as,limit=1] ani_keyam
scoreboard players operation @s ani_selkey = @e[tag=ani_sel_as,limit=1] ani_selkey

execute if score @s ani_ram matches 100 run data modify storage ani_textram data.TextListH append value '{"text":"Armorstand","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}}'
execute unless score @s ani_ram matches 100 run data modify storage ani_textram data.TextListH append value '{"text":"Armorstand","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}}'

execute if score @s ani_ram matches 200 run data modify storage ani_textram data.TextListH append value '{"text":"Pose","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}}'
execute unless score @s ani_ram matches 200 run data modify storage ani_textram data.TextListH append value '{"text":"Pose","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 200"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}}'

execute if score @s ani_ram matches 300..399 run data modify storage ani_textram data.TextListH append value '{"text":"Action","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}}'
execute unless score @s ani_ram matches 300..399 run data modify storage ani_textram data.TextListH append value '{"text":"Action","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/select_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}}'

execute if score @s ani_ram matches 400 run data modify storage ani_textram data.TextListH append value '{"text":"Keyframe","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}}'
execute unless score @s ani_ram matches 400 run data modify storage ani_textram data.TextListH append value '{"text":"Keyframe","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 400"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}}'