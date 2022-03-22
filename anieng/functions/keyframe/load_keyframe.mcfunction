# @s: ani_data
# do: 
# return: void

# calculated inkremented keyamount
scoreboard players operation #inkam ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam
scoreboard players add #inkam ani_ram 1
scoreboard players operation #preselkey ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey

# loads last if new keyframe
execute if score #inkam ani_ram = #preselkey ani_ram run scoreboard players remove @e[tag=ani_sel_as,limit=1] ani_selkey 1

# loads selected keyframe
function anieng:keyframe/util/search_keyframe
function anieng:keyframe/util/load_keyframe_into_ram

execute if score #inkam ani_ram = #preselkey ani_ram run scoreboard players add @e[tag=ani_sel_as,limit=1] ani_selkey 1

# load Position
data modify storage ani_in data.Snap set from entity @s data.EndData
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_snapshot

# if last selected clear Ram to prepare creating new keyframe
execute if score #inkam ani_ram = #preselkey ani_ram run function anieng:keyframe/util/prepare_new_keyframe

# clear
scoreboard players reset #inkam ani_ram
scoreboard players reset #preselkey ani_ram
