# << user interface >>
# @s: @ip
# do: Shows time walk action gui if action was saved using tellraw
# return: void

# find
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# load walk data into ram
function anieng:interface/av/walk/load_walk_data

# load body data
execute if score @s ani_walk_ptbw matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"forward ","color":"dark_gray"}]'
execute if score @s ani_walk_ptbw matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"backward","color":"dark_gray"}]'

execute if score @s ani_walk_pnarm matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"off","color":"dark_gray"}]'
execute if score @s ani_walk_pnarm matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"on ","color":"dark_gray"}]'

execute if score @s ani_walk_pntep matches 0 run data modify storage ani_textram data.TextList append value '[{"text":"off","color":"dark_gray"}]'
execute if score @s ani_walk_pntep matches 1 run data modify storage ani_textram data.TextList append value '[{"text":"on ","color":"dark_gray"}]'

# load tee data into ram
function anieng:interface/av/tee/load_data

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

# show body
tellraw @s [{"text":"Selected Action: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Action Selection (Only one action per keyframe is allowed)","color":"aqua"}]}},{"text":"TMW","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Time Walk: Armorstand walks only for a specific amount of ticks forward or backwards.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Reloc","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tmw/sel/reloc_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Saves settings of current action and executes it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tmw/sel/reset_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Resets action selection and stored action data.","color":"aqua"}]}},"\n","----------","\n",{"text":"WSpeed: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Walking speed","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_pwalk_speed"},"color":"dark_gray"},{"text":" > ","bold":true,"color":"dark_gray"},"  ",{"text":"Movement Direction : ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Back Walk: Decide if Armorstand should walk forward or backwards.","color":"aqua"}]}},{"nbt":"data.TextList[0]","storage":"ani_textram","interpret":true,"bold": true},"\n",{"text":"Arm Animation: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Arm Animation: Decide if Armorstand should move arms while walking.","color":"aqua"}]}},{"nbt":"data.TextList[1]","storage":"ani_textram","interpret":true,"bold": true},"\n",{"text":"Teleportation: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle teleportation: Decide if armorstand should be teleported.","color":"aqua"}]}},{"nbt":"data.TextList[2]","storage":"ani_textram","interpret":true,"bold": true},"\n",{"text":"Time in Tiks: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Amount of Ticks Armorstand should walk, before it will stop.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_ptime_walk"},"color":"dark_gray"},{"text":" >","bold":true,"color":"dark_gray"},"\n","----------","\n",{"text":"TEE: ","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_x"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_y"},"color":"gray"},{"text":" > ","bold":true,"color":"dark_gray"},{"text":"< ","bold":true,"color":"dark_gray"},{"score":{"name":"@s","objective":"ani_tee_z"},"color":"gray"},{"text":" >","bold":true,"color":"dark_gray"},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"SP","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"dark_gray"},{"text":"Reset","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}}]

# clear()
data remove storage ani_textram data