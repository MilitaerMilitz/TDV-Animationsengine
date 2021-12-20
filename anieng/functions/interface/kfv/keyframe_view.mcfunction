# show pose keyframe gui
function anieng:util/find_as

scoreboard players operation @s ani_pkeyam = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_keyam
scoreboard players operation @s ani_pselkey = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_selkey

tag @e[tag=ani_sel_as] remove ani_sel_as

# gui
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s ["","\n",{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Editmode: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"text":"Pose","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Actions","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/function anieng:interface/show_action_gui"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Keyframes","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}},"\n","----------","\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/dek_summand"}},{"score":{"name":"@s","objective":"ani_if_summand"},"color":"dark_purple"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/ink_summand"}},"\n",{"text":"Keyframe: ","bold":true,"color":"white"},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/dek_keyframe"}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/dek1_keyframe"}},{"score":{"name":"@s","objective":"ani_pselkey"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/reset_sel_keyframe"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/ink1_keyframe"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/inkdek/ink_keyframe"}},{"text":"   ","bold":true,"color":"white"},{"text":"Total Amount: ","bold":true,"color":"white"},{"score":{"name":"@s","objective":"ani_pkeyam"},"color":"gray"},"\n","----------","\n",{"text":"Create: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/kfv/create"}},{"text":"   ","bold":true,"color":"white"},{"text":"Delete: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},"\n",{"text":"Swap Left: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},{"text":"   ","bold":true,"color":"white"},{"text":"Swap Right: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},"\n","----------","\n",{"text":"Execute Current: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},"\n",{"text":"Play: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},{"text":"   ","bold":true,"color":"white"},{"text":"Pause: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"},{"text":"   ","bold":true,"color":"white"},{"text":"Reset: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"gold"}]