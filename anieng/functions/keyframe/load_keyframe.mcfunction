# @s: ani_data
# do: 
# return: void

# loads selected keyframe
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/search_keyframe
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/load_keyframe_into_ram

# calculated inkremented keyamount
scoreboard players operation #inkam ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam
scoreboard players add #inkam ani_ram 1

# if last selected clear Ram to prepare creating new keyframe
execute if score #inkam ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey run function anieng:keyframe/util/prepare_new_keyframe

# load Position
data modify storage ani_in data.Snap set from entity @s data.EndData
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_snapshot

# clear
scoreboard players reset #inkam ani_ram
