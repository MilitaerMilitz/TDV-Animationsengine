# << user interface >>
# @s: @ip
# do: Shows action selection gui using tellraw
# return: void

# find
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

tellraw @s [{"text":"Select Action: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Action Selection (Only one action per keyframe is allowed)","color":"aqua"}]}},{"text":"TMW","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tmw/sel/select_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Time Walk: Armorstand walks only for a specific amount of ticks forward or backwards.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"TRW","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/sel/select_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Trader Walk: Use a Wandering Trader to walk to a specific position in world. Enables complicated waypoints.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"AW","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/aw/sel/select_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Align Walk: Walks to a specific Position by rotating to Position and walk at the same time.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"RW","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/rw/sel/select_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Rotation Walk: Walks to a specific position by first rotating to target position and then walking in a line towards it.","color":"aqua"}]}},{"text":"\n-----------------------------------\n\n      No Action is selected \n\n-----------------------------------","color":"gray"}]

# show tee
function anieng:interface/av/tee/tee_view

data remove storage ani_textram data