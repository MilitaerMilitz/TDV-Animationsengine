# kills all animation Armorstands componets

kill @e[tag=ani_sel_as]
execute as @e[tag=ani_sel_data] run function anieng:util/kill_data
kill @e[tag=ani_sel_body]
kill @e[tag=ani_sel_head]