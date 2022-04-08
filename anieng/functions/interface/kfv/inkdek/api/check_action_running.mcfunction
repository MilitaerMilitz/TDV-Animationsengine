# checks if there is a running action and stores boolean in #running (1 := action running, 0 := action not running)
# please clear #running when using function
execute store result score #running ani_ram if score @e[tag=ani_sel_as,limit=1] ani_run matches 1

execute if score #running ani_ram matches 1 run title @s times 0 40 0
execute if score #running ani_ram matches 1 run title @s subtitle {"text":"Action is running. Please wait until it is finished.","color":"red","bold":true}
execute if score #running ani_ram matches 1 run title @s title ""