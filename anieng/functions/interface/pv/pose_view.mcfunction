# show pose view gui


function anieng:util/find_as

# copy data from selected Armorstand into player interface
scoreboard players operation #numbertolen ani_ram = @s ani_if_summand
function anieng:interface/formart/number_len2

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_rot
function anieng:interface/formart/number_len_3_pm

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_z
function anieng:interface/formart/number_len_3_pm

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_z
function anieng:interface/formart/number_len_3_pm

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_z
function anieng:interface/formart/number_len_3_pm


scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_z
function anieng:interface/formart/number_len_3_pm

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_z
function anieng:interface/formart/number_len_3_pm

scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_x
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_y
function anieng:interface/formart/number_len_3_pm
scoreboard players operation #numbertolen ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_z
function anieng:interface/formart/number_len_3_pm

scoreboard players operation @s ani_phdbo_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_hdbo_speed
scoreboard players operation @s ani_parm_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_arm_speed
scoreboard players operation @s ani_pleg_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_leg_speed
scoreboard players operation @s ani_prot_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_rot_speed




scoreboard players operation @s ani_pkeyam = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_keyam
scoreboard players operation @s ani_pselkey = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_selkey




# clear
tag @e[tag=ani_sel_as] remove ani_sel_as

# gui
tellraw @s ["\n\n\n\n\n\n\n\n\n[Esc] -----------------------------------\n              This is an empty space.\nSo empty the programmer had forget to use it.\n      If you like, I have cake for you.\n",{"text": "             [Klick here to get one]","clickEvent":{"action":"run_command","value":"/give @s cake"}},"\n----------------------------------------\n\n\n\n\n\n\n\n\n\n"]

tellraw @s ["",{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/find_kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Editmode: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"text":"Armorstand","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete Armorstand here.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Pose","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 200"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Action","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 300"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Keyframes","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 400"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}},"\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/dek_summand"}},{"nbt":"NumberList[0]","storage":"ani_vinram","interpret":true,"color":"dark_purple"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/ink_summand"}},{"text": "             "},{"text": "Keyframe: ","color": "white"},{"score":{"name":"@s","objective":"ani_pselkey"},"color":"white","bold": true},{"text": "/","color": "gray"},{"score":{"name":"@s","objective":"ani_pkeyam"},"color":"gray"},"\n",{"text":"---------------------------------------------","bold":true,"color":"dark_aqua"},"\n",{"text":"Rotation: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit horizontal rotation of Armorstand","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot"}},{"nbt":"NumberList[1]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit rotation speed (Amount of steps Armorstand will rotate).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot_speed"}},{"score":{"name":"@s","objective":"ani_prot_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot_speed"}},{"text":"                   X","hoverEvent":{"action":"show_text","contents":[{"text":"Reset Armorstand pose","color":"aqua"}]},"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/reset_pose"}},"\n",{"text":"Head: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit head pose","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_x"}},{"nbt":"NumberList[2]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_x"},"hoverEvent":{"action":"show_text","contents":[]}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_y"}},{"nbt":"NumberList[3]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_z"}},{"nbt":"NumberList[4]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of head and body (Amount of steps Armorstand will move head and body).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_hdbo_speed"}},{"score":{"name":"@s","objective":"ani_phdbo_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_hdbo_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_hdbo_speed"}},"\n",{"text":"Body: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit body pose","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_x"}},{"nbt":"NumberList[5]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_y"}},{"nbt":"NumberList[6]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_z"}},{"nbt":"NumberList[7]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_z"}},"\n",{"text":"Left Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of left arm","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_x"}},{"nbt":"NumberList[8]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_y"}},{"nbt":"NumberList[9]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_z"}},{"nbt":"NumberList[10]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of arms (Amount of steps Armorstand will move arms).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_arm_speed"}},{"score":{"name":"@s","objective":"ani_parm_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_arm_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_arm_speed"}},"\n",{"text":"Right Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right arm","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_x"}},{"nbt":"NumberList[11]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_y"}},{"nbt":"NumberList[12]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_z"}},{"nbt":"NumberList[13]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_z"}},"\n",{"text":"Left Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose oft left leg","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_x"}},{"nbt":"NumberList[14]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_y"}},{"nbt":"NumberList[15]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_z"}},{"nbt":"NumberList[16]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of legs (Amount of steps Armorstand will move legs).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_leg_speed"}},{"score":{"name":"@s","objective":"ani_pleg_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_leg_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_leg_speed"}},"\n",{"text":"Right Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right leg","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_x"}},{"nbt":"NumberList[17]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_y"}},{"nbt":"NumberList[18]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_z"}},{"nbt":"NumberList[19]","storage":"ani_vinram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_z"}}]

data remove storage ani_vinram NumberList