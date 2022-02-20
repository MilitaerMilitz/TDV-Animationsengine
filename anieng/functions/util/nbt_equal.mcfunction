# @s: no matter
# pre: ani_in data.nbt1 and ani_in data.nbt2 are defined
# do: check if two nbt data are equal
# post: ani_in is deleted; ani_ram #equal == 1 => nbt1 == nbt2; ani_ram #equal == 0 => nbt1 != nbt2
# return: ani_ram #equal

data modify storage ani_ram data.nbt set from storage ani_in data.nbt1
execute store success score #equal ani_ram run data modify storage ani_ram data.nbt set from storage ani_in data.nbt2

# swap 0 and 1
scoreboard players add #equal ani_ram 1
scoreboard players operation #equal ani_ram %= 2 numbers

# clear
data remove storage ani_ram data
data remove storage ani_in data