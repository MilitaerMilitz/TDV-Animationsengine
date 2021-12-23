# call as ani_data
# loads selected keyframe

function anieng:keyframe/rek/search_keyframe

data modify entity @s data.StartData set from entity @s data.Keyframes[0].StartData
function anieng:keyframe/util/load_startdata