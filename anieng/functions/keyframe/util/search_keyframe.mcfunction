# @s: ani_data
# pre: ani_sel_as exists
# do: Searchs selected keyframe and moves it to Position 0
# post: Keyframe which belong to ani_selkey is at first position.
# return: void

# add start marker
execute store result score #startFrame ani_ram run data get entity @s data.Keyframes[0].Frame

# load frame and check if selected is loaded
execute store result score #frame ani_ram run data get entity @s data.Keyframes[0].Frame
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey run function anieng:keyframe/util/search_keyframe_rek

# clear
scoreboard players reset #frame ani_ram
scoreboard players reset #startFrame ani_ram