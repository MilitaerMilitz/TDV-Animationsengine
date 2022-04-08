# << user interface >>
# @s: @ip
# pre: header data is loaded
# do: Shows header using tellraw
# return: void

# header
tellraw @s [{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/find_kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Menu: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"nbt":"data.TextListH[0]","storage": "ani_textram","interpret": true},{"text":" - ","bold":true,"color":"white"},{"nbt":"data.TextListH[1]","storage": "ani_textram","interpret": true},{"text":" - ","bold":true,"color":"white"},{"nbt":"data.TextListH[2]","storage": "ani_textram","interpret": true},{"text":" - ","bold":true,"color":"white"},{"nbt":"data.TextListH[3]","storage": "ani_textram","interpret": true},"\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/zinkdek/dek_summand"}},{"nbt":"data.NumberList[0]","storage":"ani_textram","interpret":true,"color":"dark_purple","bold":false},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/zinkdek/ink_summand"}},{"text": "       "},{"bold":false,"text": "Keyframe: ","color": "white"},{"score":{"name":"@s","objective":"ani_selkey"},"color":"white","bold": true},{"text": "/","color": "gray","bold": false},{"score":{"name":"@s","objective":"ani_keyam"},"color":"gray","bold":false},"\n",{"text":"---------------------------------------------","bold":true,"color":"dark_aqua"}]