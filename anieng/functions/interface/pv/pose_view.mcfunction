# << user interface >>
# @s: @ip
# do: Shows pose gui using tellraw
# return: void

# sel_as = ...
function anieng:util/find_as

# load header numbers into textram
function anieng:interface/header/load_data

# load all numbers into textram
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_rot
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_head_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_head_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_head_z
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_body_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_body_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_body_z
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_arm_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_arm_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_arm_z
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_arm_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_arm_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_arm_z
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_leg_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_leg_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_left_leg_z
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_leg_x
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_leg_y
function anieng:util/text/form_pmnum_len3
scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_right_leg_z
function anieng:util/text/form_pmnum_len3

# load scores to @s
scoreboard players operation @s ani_hdbo_speed = @e[tag=ani_sel_as,limit=1] ani_hdbo_speed
scoreboard players operation @s ani_arm_speed = @e[tag=ani_sel_as,limit=1] ani_arm_speed
scoreboard players operation @s ani_leg_speed = @e[tag=ani_sel_as,limit=1] ani_leg_speed
scoreboard players operation @s ani_rot_speed = @e[tag=ani_sel_as,limit=1] ani_rot_speed

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as

# ---

# show easter egg
function anieng:interface/egg/egg_view

# show header
function anieng:interface/header/header_view

# show pose view
tellraw @s [{"text":"Rotation: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit horizontal rotation of Armorstand","color":"aqua"}]}},{"text":"  "},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot"}},{"bold":false,"nbt":"data.NumberList[1]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot"}},{"text":"  "},{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit rotation speed (Amount of steps Armorstand will rotate).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot_speed"}},{"bold":false,"score":{"name":"@s","objective":"ani_rot_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot_speed"}},{"text":"                      "},{"text":"X","hoverEvent":{"action":"show_text","contents":[{"text":"Reset Armorstand pose","color":"aqua"}]},"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_pose"}},"\n",{"text":"Head: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit head pose","color":"aqua"}]}},{"text":"      "},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_x"}},{"bold":false,"nbt":"data.NumberList[2]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_x"},"hoverEvent":{"action":"show_text","contents":[]}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_y"}},{"bold":false,"nbt":"data.NumberList[3]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_z"}},{"bold":false,"nbt":"data.NumberList[4]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_z"}},"  ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of head and body (Amount of steps Armorstand will move head and body).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_hdbo_speed"}},{"bold":false,"score":{"name":"@s","objective":"ani_hdbo_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_hdbo_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_hdbo_speed"}},"\n",{"text":"Body: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit body pose","color":"aqua"}]}},{"text":"      "},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_x"}},{"bold":false,"nbt":"data.NumberList[5]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_y"}},{"bold":false,"nbt":"data.NumberList[6]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_z"}},{"bold":false,"nbt":"data.NumberList[7]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_z"}},"\n",{"text":"Left Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of left arm","color":"aqua"}]}},{"text": " "},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_x"}},{"bold":false,"nbt":"data.NumberList[8]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_y"}},{"bold":false,"nbt":"data.NumberList[9]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_z"}},{"bold":false,"nbt":"data.NumberList[10]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_z"}},"  ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of arms (Amount of steps Armorstand will move arms).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_arm_speed"}},{"bold":false,"score":{"name":"@s","objective":"ani_arm_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_arm_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_arm_speed"}},"\n",{"text":"Right Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right arm","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_x"}},{"bold":false,"nbt":"data.NumberList[11]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_y"}},{"bold":false,"nbt":"data.NumberList[12]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_z"}},{"bold":false,"nbt":"data.NumberList[13]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_z"}},"\n",{"text":"Left Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose oft left leg","color":"aqua"}]}},{"text": " "},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_x"}},{"bold":false,"nbt":"data.NumberList[14]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_y"}},{"bold":false,"nbt":"data.NumberList[15]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_z"}},{"bold":false,"nbt":"data.NumberList[16]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_z"}},"  ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of legs (Amount of steps Armorstand will move legs).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_leg_speed"}},{"bold":false,"score":{"name":"@s","objective":"ani_leg_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_leg_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_leg_speed"}},"\n",{"text":"Right Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right leg","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_x"}},{"bold":false,"nbt":"data.NumberList[17]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_y"}},{"bold":false,"nbt":"data.NumberList[18]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_z"}},{"bold":false,"nbt":"data.NumberList[19]","storage":"ani_textram","interpret":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_z"}}]

# [Debug NBT Data]
#tellraw @p {"bold":false,"nbt":"data.NumberList","storage":"ani_textram"}

# clear()
data remove storage ani_textram data.NumberList