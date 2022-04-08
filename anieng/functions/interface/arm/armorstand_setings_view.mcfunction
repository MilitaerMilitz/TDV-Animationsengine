# << user interface >>
# @s: @ip
# do: Shows armorstand gui using tellraw
# return: void

# find
function anieng:util/find_as

# load Header Number into textram
function anieng:interface/header/load_data

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

tellraw @s [{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},"\n",{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/find_kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},"\n",{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/header/inkdek/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Set Dress","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/arm/inkdek/set_dress"},"hoverEvent":{"action":"show_text","contents":[{"text":"Replace the dress from Armorstand with you inventory Items.","color":"aqua"}]}},"\n",{"text":"Get Dress ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/arm/inkdek/get_dress"},"hoverEvent":{"action":"show_text","contents":[{"text":"Give you the dress from Armorstand.","color":"aqua"}]}}]

# clear()
data remove storage ani_textram data