# kills animation Armorstand if componets are missing

execute unless entity @e[tag=ani_sel_data] run function anieng:util/sel_kill
execute unless entity @e[tag=ani_sel_body] run function anieng:util/sel_kill
execute unless entity @e[tag=ani_sel_head] run function anieng:util/sel_kill