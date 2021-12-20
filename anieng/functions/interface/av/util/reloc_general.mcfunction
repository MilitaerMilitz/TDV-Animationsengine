# call as ani_data marker

function anieng:keyframe/load_keyframe

# [debug] set cooldown for existence checking between Armorstand and data marker
scoreboard players set #vtout ani_ram 20

# clear action
data remove entity @s data.Action