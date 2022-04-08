# << user interface >>
# @s: @ip
# do: Shows align walk action gui using tellraw
# return: void

# find
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# load walk data into ram
function anieng:interface/av/walk/load_walk_data

# load body data
execute if score @s ani_walk_pnarm matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"off","color":"gold"}]'
execute if score @s ani_walk_pnarm matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"on ","color":"gold"}]'

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

# gui
tellraw @s [{"text":"Selected Action: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Action Selection (Only one action per keyframe is allowed)","color":"aqua"}]}},{"text":"TRW","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Aline Walke go to a position per line Some text that need to change.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Save","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/sel/save_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Saves settings of current action and executes it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/sel/reset_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Resets action selection and stored action data.","color":"aqua"}]}},"\n","----------","\n",{"text":"WSpeed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Walking speed","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/inkdek/dek_wspeed"}},{"score":{"name":"@s","objective":"ani_walk_speed"},"color":"gold"},{"text":" > ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/inkdek/ink_wspeed"}},"\n",{"text":"Position: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/dek_x"}},{"score":{"name":"@s","objective":"ani_tee_x"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/ink_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/dek_y"}},{"score":{"name":"@s","objective":"ani_tee_y"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/ink_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/dek_z"}},{"score":{"name":"@s","objective":"ani_tee_z"},"color":"gold"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/ink_z"}},{"text":" - ","bold":true,"color":"white"},{"text":"SP","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/set_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Reset","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/reset_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}},"\n",{"text":"Arm Animation: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Arm Animation: Decide if Armorstand should move arms while walking.","color":"aqua"}]}},{"nbt":"data.TextList[0]","storage":"ani_textram","interpret":true,"bold": true,"clickEvent":{"action":"run_command","value":"/function anieng:interface/av/walk/inkdek/toggle_narm"}},"\n","\n","----------"]

# show tee
function anieng:interface/av/tee/tee_view

# clear()
data remove storage ani_textram data