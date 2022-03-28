
# show pose keyframe gui
function anieng:util/find_as

scoreboard players operation #numbertolen ani_ram = @s ani_if_summand
function anieng:interface/formart/number_len2



scoreboard players operation @s ani_pkeyam = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_keyam
scoreboard players operation @s ani_pselkey = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_selkey

scoreboard players operation #numbertolen ani_ram = @s ani_pselkey
function anieng:interface/formart/number_len3
scoreboard players operation #numbertolen ani_ram = @s ani_pkeyam
function anieng:interface/formart/number_len3

execute if score @s ani_pselkey <= @s ani_pkeyam run data modify storage ani_vinram TextList append value '[{"text":"Save : ","color":"gold"}]'
execute if score @s ani_pselkey > @s ani_pkeyam run data modify storage ani_vinram TextList append value '[{"text":"Create: ","color":"gold"}]'


execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=!ani_play] run data modify storage ani_vinram TextList append value '[{"text":"Play: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=ani_play] run data modify storage ani_vinram TextList append value '[{"text":"Play: ","color":"green"}]'

execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=!ani_pause] run data modify storage ani_vinram TextList append value '[{"text":"Pause: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=ani_pause] run data modify storage ani_vinram TextList append value '[{"text":"Pause: ","color":"green"}]'

execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=!ani_loop] run data modify storage ani_vinram TextList append value '[{"text":"Loop: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=ani_loop] run data modify storage ani_vinram TextList append value '[{"text":"Loop: ","color":"green"}]'




tag @e[tag=ani_sel_as] remove ani_sel_as

# gui
tellraw @s ["\n\n\n\n\n\n\n\n\n[Esc] -----------------------------------\n       This is an empty space.\nSo empty the programmer had forget to use it.\n   If you like, I have cake for you.\n",{"text": "       [Klick here to get one]","clickEvent":{"action":"run_command","value":"/give @s cake"}},"\n----------------------------------------\n\n\n\n\n\n\n\n\n\n"]

tellraw @s ["",{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/find_kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Editmode: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"text":"Armorstand","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Pose","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 200"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Action","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 300"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Keyframes","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 400"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}},"\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/dek_summand"}},{"nbt":"NumberList[0]","storage":"ani_vinram","interpret":true,"color":"dark_purple"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/ink_summand"}},{"text": "       "},{"text": "Keyframe: ","color": "white"},{"score":{"name":"@s","objective":"ani_pselkey"},"color":"white","bold": true},{"text": "/","color": "gray"},{"score":{"name":"@s","objective":"ani_pkeyam"},"color":"gray"},"\n",{"text":"---------------------------------------------","bold":true,"color":"dark_aqua"},"\n",{"text":"Keyframe: ","bold":true,"color":"gray"},{"text":"< ","bold":true,"color":"gray"},{"text":"< ","bold":true,"color":"gray"},{"nbt":"NumberList[1]","storage":"ani_vinram","interpret":true,"color":"gray"},{"text":"/","color":"gray"},{"nbt":"NumberList[2]","storage":"ani_vinram","interpret":true,"color":"gray"},{"text":" >","bold":true,"color":"gray"},{"text":" >","bold":true,"color":"gray"},{"text":"  ","bold":true,"color":"gray"},{"nbt":"TextList[0]","storage":"ani_vinram","interpret":true,"color":"gray","bold":true},{"text":"X","bold":true,"color":"gray"},{"text":"\n","bold":true,"color":"gray"},"\n\n",{"text":"Delete: ","bold":true,"color":"gray"},{"text":"X","bold":true,"color":"gray"},"\n","------------------------------","\n",{"text":"Execute Current: ","bold":true,"color":"gray"},{"text":"X","bold":true,"color":"gray"},"\n",{"nbt":"TextList[1]","storage":"ani_vinram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold"},{"text":"  ","bold":true,"color":"white"},{"nbt":"TextList[2]","storage":"ani_vinram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold"},{"text":"  ","bold":true,"color":"white"},{"nbt":"TextList[3]","storage":"ani_vinram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold"}]

data remove storage ani_vinram NumberList
data remove storage ani_vinram TextList