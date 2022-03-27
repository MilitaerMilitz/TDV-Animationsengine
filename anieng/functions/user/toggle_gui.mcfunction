# function toggles visibility of gui

# set non existent scores
execute unless score @s ani_ram matches 0.. run scoreboard players set @s ani_ram 400
execute unless score @s ani_if_summand matches 1.. run scoreboard players set @s ani_if_summand 1

# Toggle algorithm
scoreboard players operation #pre ani_ram = @s ani_ram

# Toggle on
execute if score #pre ani_ram matches 0 run scoreboard players set @s ani_ram 400
execute if score #pre ani_ram matches 0 store result score #cmdFeed ani_ram run gamerule sendCommandFeedback
execute if score #pre ani_ram matches 0 run gamerule sendCommandFeedback false

# Toggle off
execute if score #pre ani_ram matches 1.. run scoreboard players set @s ani_ram 0
execute if score #pre ani_ram matches 1.. if score #cmdFeed ani_ram matches 1 run gamerule sendCommandFeedback true
execute if score #pre ani_ram matches 1.. run scoreboard players reset #cmdFeed ani_ram
execute if score #pre ani_ram matches 1.. run function anieng:util/reset_player_sel_scores

# Ram Cleanup
scoreboard players reset #pre ani_ram