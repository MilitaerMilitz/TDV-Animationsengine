# <help function>
# @s: ani_act

# Initialzie #tit, #tbw
execute store result score #tit ani_ram run data get storage ani_in data.Action.tit
execute store result score #tbw ani_ram run data get storage ani_in data.Action.tbw

# Marker ani_tmp = new Marker(StartData)
summon marker ~ ~ ~ {Tags:["ani_tmp"]}
teleport @e[tag=ani_tmp] @s

# Initialize ani_tmp ani_rot, ani_rot_s, ani_rot_speed, ani_walk_speed
execute store result score @e[tag=ani_tmp,limit=1] ani_walk_speed run data get storage ani_in data.Action.wspeed
execute store result score @e[tag=ani_tmp,limit=1] ani_rot run data get entity @s Rotation[0]
scoreboard players operation @e[tag=ani_tmp,limit=1] ani_rot_s = #rot_s ani_ram
scoreboard players operation @e[tag=ani_tmp,limit=1] ani_rot_speed = #rot_speed ani_ram

# while (#tit > 0)
execute if score #tit ani_ram matches 1.. as @e[tag=ani_tmp,limit=1] at @s run function anieng:animation/walk/time_walk/simulation/simulate_rek

# while (ani_rot != ani_rot_s)
execute as @e[tag=ani_tmp,limit=1] at @s unless score @s ani_rot = @s ani_rot_s run function anieng:animation/walk/time_walk/simulation/simulate_rek2

# return EndData = StartData.Pos(...).Rotation(...)
data modify storage ani_out data.EndData set from storage ani_in data.StartData
data modify storage ani_out data.EndData.Pos set from entity @e[tag=ani_tmp,limit=1] Pos
execute store result storage ani_out data.EndData.Pose.Rotation int 1 run data get entity @e[tag=ani_tmp,limit=1] Rotation[0]

# clear()
scoreboard players reset #tbw ani_ram
scoreboard players reset #tit ani_ram
kill @e[tag=ani_tmp]