# <help function>
# @s: ani_data

# Read Action
execute store result score #action ani_ram run data get entity @s data.Keyframes[0].Action.id
execute unless score #action ani_ram matches 0.. run scoreboard players set #action ani_ram 0

# Enew = Snew + Told;
execute if score #action ani_ram matches 311 run function anieng:keyframe/util/recalculate_keyframes_rek_mod_tmw
execute if score #action ani_ram matches 0 run function anieng:keyframe/util/recalculate_keyframes_rek_mod_standard

# clear()
data remove storage ani_out data

# rekursion call -> propagate;
execute unless score @e[tag=ani_sel_as,limit=1] ani_selkey = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/util/recalculate_keyframes_rek_1

