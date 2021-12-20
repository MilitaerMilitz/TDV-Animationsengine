# call as ani_data marker

function anieng:keyframe/util/load_startdata

# [debug] set cooldown for existence checking between Armorstand and data marker
scoreboard players set #vtout ani_ram 20

# clear action
data remove entity @s data.Action