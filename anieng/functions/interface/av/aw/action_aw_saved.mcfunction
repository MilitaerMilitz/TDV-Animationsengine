# << user interface >>
# @s: @ip
# do: Shows align walk action gui if action was saved using tellraw
# return: void

# find
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# load walk data into ram
function anieng:interface/av/walk/load_walk_data

# load body data
execute if score @s ani_walk_tbw matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"forward ","color":"gray"}]'
execute if score @s ani_walk_tbw matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"backward","color":"gray"}]'

execute if score @s ani_walk_narm matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"off","color":"gray"}]'
execute if score @s ani_walk_narm matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"on ","color":"gray"}]'

execute if score @s ani_arwalk_rot matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"negativ","color":"gray"}]'
execute if score @s ani_arwalk_rot matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"positiv","color":"gray"}]'

# load tee data into ram
function anieng:interface/av/tee/load_data

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

# body
tellraw @s [{"text":"Selected Action: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Action Selection (Only one action per keyframe is allowed)","color":"aqua"}]}},{"text":"Align Walk","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Aline Walke go to a position per line Some text that need to change.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Reloc","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/aw/sel/reloc_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Saves settings of current action and executes it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/aw/sel/reset_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Resets action selection and stored action data.","color":"aqua"}]}},"\n","----------","\n",{"text":"WSpeed: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Walking speed","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_walk_speed"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},"  ",{"text":"Movement Direction: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Back Walk: Decide if Armorstand should walk forward or backwards.","color":"aqua"}]}},{"nbt":"data.TextList[0]","storage":"ani_textram","interpret":true,"bold":true},"\n",{"text":"Position: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_x"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_y"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_z"},"color":"gray"},{"text":" >","bold":true,"color":"dark_gray"},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"SP","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"Reset","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}},"\n",{"text":"Arm Animation: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Arm Animation: Decide if Armorstand should move arms while walking.","color":"aqua"}]}},{"nbt":"data.TextList[1]","storage":"ani_textram","interpret":true,"bold": true},"\n",{"text":"Rotation: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Arm Animation: Decide if Armorstand should move arms while walking.","color":"aqua"}]}},{"nbt":"data.TextList[2]","storage":"ani_textram","interpret":true,"bold": true},"\n","----------","\n",{"text":"TEE: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_x"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_y"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_z"},"color":"gray"},{"text":" >","bold":true,"color":"dark_gray"},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"SP","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"Reset","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}}]

# clear()
data remove storage ani_textram data