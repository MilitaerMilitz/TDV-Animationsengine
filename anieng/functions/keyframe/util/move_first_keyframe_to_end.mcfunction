# call as ani_data
# moves first keyframe to end
data modify entity @s data.Keyframes append from entity @s data.Keyframes[0]
data remove entity @s data.Keyframes[0]