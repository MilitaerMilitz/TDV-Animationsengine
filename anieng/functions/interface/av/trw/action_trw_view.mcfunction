# show pose action gui

function anieng:interface/av/util/load_data



#

execute if score @s ani_walk_pnarm matches 0 run data modify storage ani_vinram TextList append value '[{"text":"off","color":"gold"}]'
execute if score @s ani_walk_pnarm matches 1 run data modify storage ani_vinram TextList append value '[{"text":"on ","color":"gold"}]'


scoreboard players operation #numbertolen ani_ram = @s ani_if_summand
function anieng:interface/formart/number_len2

scoreboard players operation @s ani_pkeyam = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_keyam
scoreboard players operation @s ani_pselkey = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_selkey





# gui
tellraw @s ["\n\n\n\n\n\n\n\n\n[Esc] -----------------------------------\n       This is an empty space.\nSo empty the programmer had forget to use it.\n   If you like I have't cake for you\n",{"text": "      [Klick here to get none]","clickEvent":{"action":"run_command","value":"/kill @s"}},"\n   Sincerely the Traider from TTT","\n----------------------------------------\n\n\n\n\n\n\n\n\n"]
tellraw @s ["",{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/find_kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Editmode: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"text":"Armorstand","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Pose","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 200"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Action","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 300"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Keyframes","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 400"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}},"\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/dek_summand"}},{"nbt":"NumberList[0]","storage":"ani_vinram","interpret":true,"color":"dark_purple"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/ink_summand"}},{"text": "       "},{"text": "Keyframe: ","color": "white"},{"score":{"name":"@s","objective":"ani_pselkey"},"color":"white","bold": true},{"text": "/","color": "gray"},{"score":{"name":"@s","objective":"ani_pkeyam"},"color":"gray"},"\n",{"text":"---------------------------------------------","bold":true,"color":"dark_aqua"},"\n",{"text":"Selected Action: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Action Selection (Only one action per keyframe is allowed)","color":"aqua"}]}},{"text":"TRW","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Aline Walke go to a position per line Some text that need to change.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Save","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/save_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Saves settings of current action and executes it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/reset_action"},"hoverEvent":{"action":"show_text","contents":[{"text":"Resets action selection and stored action data.","color":"aqua"}]}},"\n","----------","\n",{"text":"WSpeed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Walking speed","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/util/dek_wspeed"}},{"score":{"name":"@s","objective":"ani_pwalk_speed"},"color":"gold"},{"text":" > ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/util/ink_wspeed"}},"\n",{"text":"Position: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/dek_x"}},{"score":{"name":"@s","objective":"ani_ptee_x"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/ink_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/dek_y"}},{"score":{"name":"@s","objective":"ani_ptee_y"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/ink_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/dek_z"}},{"score":{"name":"@s","objective":"ani_ptee_z"},"color":"gold"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/ink_z"}},{"text":" - ","bold":true,"color":"white"},{"text":"SP","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/set_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Reset","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/trw/reset_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}},"\n",{"text":"Arm Animation: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle Arm Animation: Decide if Armorstand should move arms while walking.","color":"aqua"}]}},{"nbt":"TextList[0]","storage":"ani_vinram","interpret":true,"bold": true,"clickEvent":{"action":"run_command","value":"/function anieng:interface/av/util/toggel_narm"}},"\n","\n","----------","\n",{"text":"TEE: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Trigger External Engines: Enables possibility to trigger external engines by placing a redstoneblock in world, when loading this keyframe.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/dek_x"}},{"score":{"name":"@s","objective":"ani_ptee_x"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/ink_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/dek_y"}},{"score":{"name":"@s","objective":"ani_ptee_y"},"color":"gold"},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/ink_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/dek_z"}},{"score":{"name":"@s","objective":"ani_ptee_z"},"color":"gold"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/ink_z"}},{"text":" - ","bold":true,"color":"white"},{"text":"SP","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/set_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Pos: Place at your position a redstoneblock when keyframe is loaded.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Reset","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/av/tee/reset_pos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Trigger nothing external anymore.","color":"aqua"}]}}]


data remove storage ani_vinram TextList
data remove storage ani_vinram NumberList