# checks if there is an unsaved action in Actions tab and stores boolean in #unsaved (1 := action saved, 0 := action unsaved)
# please clear #saved when using function
execute store success score #saved ani_ram unless score @e[tag=ani_sel_as,limit=1] ani_action matches 4

execute if score #saved ani_ram matches 0 run title @s times 0 40 0
execute if score #saved ani_ram matches 0 run title @s subtitle {"text":"There are unsaved actions","color":"red","bold":true}
execute if score #saved ani_ram matches 0 run title @s title ""