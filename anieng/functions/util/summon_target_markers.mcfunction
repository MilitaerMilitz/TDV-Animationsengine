# @s: ani_act
# input: @s ani_pwalk_x, @s ani_pwalk_y, @s ani_pwalk_z
# do: Summons two markers one at input position the other at @s facing the first one.
# postdo: Kill both markers if your calculation is ready
# return: @e[type=marker,tag=ani_tmp,pos=[@s ani_pwalk_x, @s ani_pwalk_y, @s ani_pwalk_z]]
# return: @e[type=marker,tag=ani_tmp_align,pos=[~, ~, ~],facing=ani_tmp]

# ani_tmp = new Marker(pwalk_x, pwalk_y, pwalk_z)
summon marker ~ ~ ~ {Tags:["ani_tmp"]}
execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[0] double 0.0001 run scoreboard players get @s ani_pwalk_x
execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[1] double 0.0001 run scoreboard players get @s ani_pwalk_y
execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[2] double 0.0001 run scoreboard players get @s ani_pwalk_z

# ani_tmp_align = new Marker(~, ~, ~).facing(ani_tmp)
summon marker ~ ~ ~ {Tags:["ani_tmp_align"]}
execute as @e[tag=ani_tmp_align] at @s run teleport @s ~ ~ ~ facing entity @e[tag=ani_tmp,sort=nearest,limit=1]