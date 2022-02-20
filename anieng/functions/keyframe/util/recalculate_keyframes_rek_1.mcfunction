# <help function>
# @s: ani_data

# load previous into ram and select new
function anieng:keyframe/util/load_keyframe_into_ram
execute as @e[tag=ani_sel_as,limit=1] run scoreboard players add @s ani_selkey 1
function anieng:keyframe/util/search_keyframe

# Propagate EndData to next keyframe StartData
data modify entity @s data.Keyframes[0].StartData set from entity @s data.EndData

# Decide if Action is static
execute if data entity @s data.Keyframes[0].Action.static store result score #static ani_ram run data get entity @s data.Keyframe[0].Action.static
execute unless data entity @s data.Keyframes[0].Action.static run scoreboard players set #static ani_ram 0

# Tnew = Enew - Snew;
execute if score #static ani_ram matches 1 run function anieng:keyframe/util/recalculate_keyframes_rek_2a

# Enew = Snew + Told;
# rekursion call -> propagate;
execute if score #static ani_ram matches 0 run function anieng:keyframe/util/recalculate_keyframes_rek_2b

# clear
scoreboard players reset #static ani_ram

