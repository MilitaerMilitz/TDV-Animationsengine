# call as ani_data
# transfer End Pos to Start Pos

data modify storage ani_ram data.Pos set from entity @s data.Keyframes[0].EndData.Pos
data modify storage ani_ram data.Keyframe set from entity @s data.Keyframes[0]
data remove entity @s data.Keyframes[0]
data modify entity @s data.Keyframes[0].StartData.Pos set from storage ani_ram data.Pos
data modify entity @s data.Keyframes prepend from storage ani_ram data.Keyframe

# clear
data remove storage ani_ram data