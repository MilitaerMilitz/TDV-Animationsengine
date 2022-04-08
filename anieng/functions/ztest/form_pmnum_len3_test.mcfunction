scoreboard players set #value ani_ram 0

function anieng:util/text/form_pmnum_len3

# [Debug NBT Data]
tellraw @p {"nbt":"data.value","storage":"ani_out","interpret":true}
tellraw @p {"nbt":"data.value","storage":"ani_out"}

# clear()
scoreboard players reset #test ani_ram
data remove storage ani_out data