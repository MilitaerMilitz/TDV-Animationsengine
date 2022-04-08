# << user interface >>
# @s: @ip
# do: Shows keyframe gui using tellraw
# return: void

# sel_as = ...
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# load body data
scoreboard players operation #value ani_ram = @s ani_pselkey
function anieng:util/text/form_num_len3

scoreboard players operation #value ani_ram = @s ani_pkeyam
function anieng:util/text/form_num_len3

execute if score @s ani_pselkey <= @s ani_pkeyam run data modify storage ani_textram data.TextList append value '[{"text":"Save : ","color":"gold"}]'
execute if score @s ani_pselkey > @s ani_pkeyam run data modify storage ani_textram data.TextList append value '[{"text":"Create: ","color":"gold"}]'

execute if entity @e[tag=ani_sel_as,limit=1,tag=!ani_play] run data modify storage ani_textram data.TextList append value '[{"text":"Play: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,sort=nearest,limit=1,tag=ani_play] run data modify storage ani_textram data.TextList append value '[{"text":"Play: ","color":"green"}]'

execute if entity @e[tag=ani_sel_as,limit=1,tag=!ani_pause] run data modify storage ani_textram data.TextList append value '[{"text":"Pause: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,limit=1,tag=ani_pause] run data modify storage ani_textram data.TextList append value '[{"text":"Pause: ","color":"green"}]'

execute if entity @e[tag=ani_sel_as,limit=1,tag=!ani_loop] run data modify storage ani_textram data.TextList append value '[{"text":"Loop: ","color":"gray"}]'
execute if entity @e[tag=ani_sel_as,limit=1,tag=ani_loop] run data modify storage ani_textram data.TextList append value '[{"text":"Loop: ","color":"green"}]'

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

tellraw @s [{"text":"Keyframe: ","bold":true,"color":"white"},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/dek_keyframe"}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/dek1_keyframe"}},{"nbt":"data.NumberList[1]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/reset_sel_keyframe"}},{"text":"/","color":"gray","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/reset_sel_keyframe"}},{"nbt":"data.NumberList[2]","storage":"ani_textram","interpret":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/reset_sel_keyframe"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/ink1_keyframe"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/ink_keyframe"}},{"text":"  ","bold":true,"color":"white"},{"nbt":"data.TextList[0]","storage":"ani_textram","interpret":true,"color":"white","bold":true},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/create"}},{"text":"\n","bold":true,"color":"white"},"\n\n",{"text":"Delete All: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/delete_all"}},"\n","------------------------------","\n",{"text":"Execute Current: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/execute_current"}},"\n",{"nbt":"data.TextList[1]","storage":"ani_textram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/toggle_play"}},{"text":"  ","bold":true,"color":"white"},{"nbt":"data.TextList[2]","storage":"ani_textram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/toggle_pause"}},{"text":"  ","bold":true,"color":"white"},{"nbt":"data.TextList[3]","storage":"ani_textram","interpret":true,"bold":true},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/toggle_loop"}}]

# clear()
data remove storage ani_textram data