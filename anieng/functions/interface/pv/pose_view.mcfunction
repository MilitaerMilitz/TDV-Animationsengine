# show pose view gui

function anieng:util/find_as

# copy data from selected Armorstand into player interface
scoreboard players operation @s ani_prot = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_rot

scoreboard players operation @s ani_phead_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_x
scoreboard players operation @s ani_phead_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_y
scoreboard players operation @s ani_phead_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_head_z

scoreboard players operation @s ani_pbody_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_x
scoreboard players operation @s ani_pbody_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_y
scoreboard players operation @s ani_pbody_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_body_z

scoreboard players operation @s ani_pleft_arm_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_x
scoreboard players operation @s ani_pleft_arm_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_y
scoreboard players operation @s ani_pleft_arm_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_arm_z


scoreboard players operation @s ani_pright_arm_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_x
scoreboard players operation @s ani_pright_arm_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_y
scoreboard players operation @s ani_pright_arm_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_arm_z

scoreboard players operation @s ani_pleft_leg_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_x
scoreboard players operation @s ani_pleft_leg_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_y
scoreboard players operation @s ani_pleft_leg_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_left_leg_z

scoreboard players operation @s ani_pright_leg_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_x
scoreboard players operation @s ani_pright_leg_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_y
scoreboard players operation @s ani_pright_leg_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_right_leg_z

scoreboard players operation @s ani_phdbo_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_hdbo_speed
scoreboard players operation @s ani_parm_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_arm_speed
scoreboard players operation @s ani_pleg_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_leg_speed
scoreboard players operation @s ani_prot_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_rot_speed

# Cleanup
tag @e[tag=ani_sel_as] remove ani_sel_as

# gui
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s  ["","\n",{"text":"Armorstand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Armorstand Selection Settings","color":"aqua"}]}},{"text":"Create","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/summon"},"hoverEvent":{"action":"show_text","contents":[{"text":"Creates new animation Armorstand at your position and selects it.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Delete","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:user/kill"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kill selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Select","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/select_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Select nearest animation Armorstand to edit animation.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Glow","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/show_selected"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle glowing effect to show selected Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Tp","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/teleport_nearest"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleports you to selected Armorstand.","color":"aqua"}]}},"\n",{"text":"Editmode: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Select which gui you want to open.","color":"aqua"}]}},{"text":"Pose","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Edit Pose of animation Armorstand.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Actions","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/function anieng:interface/show_action_gui"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit special animation actions e.g. walking and other stuff. Note that only one action per keyframe is allowed.","color":"aqua"}]}},{"text":" - ","bold":true,"color":"white"},{"text":"Keyframes","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ani_ram 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Manage, add or delete keyframes here.","color":"aqua"}]}},"\n","----------","\n",{"text":"Summand: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit amount of steps purple values should increase or decrease.","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/dek_summand"}},{"score":{"name":"@s","objective":"ani_if_summand"},"color":"dark_purple"},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/ink_summand"}},"   ",{"text":"Reset: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Reset Armorstand pose","color":"aqua"}]}},{"text":"X","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/reset_pose"}},"\n",{"text":"Rotation: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit horizontal rotation of Armorstand","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot"}},{"score":{"name":"@s","objective":"ani_prot"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit rotation speed (Amount of steps Armorstand will rotate).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_rot_speed"}},{"score":{"name":"@s","objective":"ani_prot_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_rot_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_rot_speed"}},"\n",{"text":"Head: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit head pose","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_x"}},{"score":{"name":"@s","objective":"ani_phead_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_x"},"hoverEvent":{"action":"show_text","contents":[]}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_y"}},{"score":{"name":"@s","objective":"ani_phead_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_head_z"}},{"score":{"name":"@s","objective":"ani_phead_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_head_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_head_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of head and body (Amount of steps Armorstand will move head and body).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_hdbo_speed"}},{"score":{"name":"@s","objective":"ani_phdbo_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_hdbo_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_hdbo_speed"}},"\n",{"text":"Body: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit body pose","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_x"}},{"score":{"name":"@s","objective":"ani_pbody_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_y"}},{"score":{"name":"@s","objective":"ani_pbody_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_body_z"}},{"score":{"name":"@s","objective":"ani_pbody_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_body_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_body_z"}},"\n",{"text":"Left Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of left arm","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_x"}},{"score":{"name":"@s","objective":"ani_pleft_arm_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_y"}},{"score":{"name":"@s","objective":"ani_pleft_arm_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_arm_z"}},{"score":{"name":"@s","objective":"ani_pleft_arm_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_arm_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of arms (Amount of steps Armorstand will move arms).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_arm_speed"}},{"score":{"name":"@s","objective":"ani_parm_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_arm_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_arm_speed"}},"\n",{"text":"Right Arm: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right arm","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_x"}},{"score":{"name":"@s","objective":"ani_pright_arm_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_y"}},{"score":{"name":"@s","objective":"ani_pright_arm_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_arm_z"}},{"score":{"name":"@s","objective":"ani_pright_arm_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_arm_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_arm_z"}},"\n",{"text":"Left Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose oft left leg","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_x"}},{"score":{"name":"@s","objective":"ani_pleft_leg_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_y"}},{"score":{"name":"@s","objective":"ani_pleft_leg_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_left_leg_z"}},{"score":{"name":"@s","objective":"ani_pleft_leg_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_left_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_left_leg_z"}},"   ",{"text":"Speed: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit movement speed of legs (Amount of steps Armorstand will move legs).","color":"aqua"}]}},{"text":"< ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_leg_speed"}},{"score":{"name":"@s","objective":"ani_pleg_speed"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_leg_speed"}},{"text":" >","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_leg_speed"}},"\n",{"text":"Right Leg: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Edit pose of right leg","color":"aqua"}]}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_x"}},{"score":{"name":"@s","objective":"ani_pright_leg_x"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_x"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_x"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_y"}},{"score":{"name":"@s","objective":"ani_pright_leg_y"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_y"}},{"text":" > ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_y"}},{"text":"< ","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/dek_right_leg_z"}},{"score":{"name":"@s","objective":"ani_pright_leg_z"},"color":"gold","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/reset_right_leg_z"}},{"text":" >","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function anieng:interface/pv/inkdek/ink_right_leg_z"}}]