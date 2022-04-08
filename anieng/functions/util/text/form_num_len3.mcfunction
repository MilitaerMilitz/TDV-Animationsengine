# @s: no matter
# pre: executed chunk is loaded
# input: #value ani_ram
# do: Forms #value into three positions, so that output can used in tellraw or other text related things
# math: f: Z -> MC String
# math: x -> 00x, x € [0,..,9]; 0x, x € [10,..,99]; x, else 
# exm: 3 -> 003, 0 -> 000, 11 -> 011, -3 -> -3, -11 -> -11
# return: ani_textram data.NumberList += output

# inter = new Interpreter()
setblock ~ -64 ~ oak_sign 

execute if score #value ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"00"},{"score":{"name":"#value","objective":"ani_ram"}}]'
execute if score #value ani_ram matches 10..99 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"0"},{"score":{"name":"#value","objective":"ani_ram"}}]'
execute if score #value ani_ram matches 100.. at @s run data modify block ~ -64 ~ Text1 set value '[{"score":{"name":"#value","objective":"ani_ram"}}]'
execute if score #value ani_ram matches ..-1 at @s run data modify block ~ -64 ~ Text1 set value '[{"score":{"name":"#value","objective":"ani_ram"}}]'

# return text
data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1

# clear
setblock ~ -64 ~ bedrock
scoreboard players reset #value ani_ram

#execute if score #value ani_ram matches 0.. store result storage ani_textram ID int 1 run scoreboard players get #value ani_ram
#execute if score #value ani_ram matches ..-1 store result storage ani_textram ID int -1 run scoreboard players get #value ani_ram

#setblock ~ -64 ~ oak_sign 

#execute if score #value ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"00"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches 10..99 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"0"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches 100.. at @s run data modify block ~ -64 ~ Text1 set value '[{"text":""},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches ..-1 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":""},{"nbt":"ID","storage":"ani_textram","interpret":true}]'

#execute at @s run data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1
#setblock ~ -64 ~ bedrock

#scoreboard players reset #value ani_ram
