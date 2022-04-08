# @s: no matter
# pre: executed chunk is loaded
# input: #value ani_ram
# uses: #value2 ani_ram
# do: Forms #value into three positions, so that output can used in tellraw or other text related things
# math: f: Z -> MC String
# math: x -> +00x, x € [0,..,9]; +0x, x € [10,..,99]; +x, x € [100,..]; -00x, x € [-9,..,0]; -0x, x € [-99,..,-10]; -x, x € [..,-100]; 
# exm: 3 -> +003, 0 -> +000, 11 -> +011, -3 -> -003, -11 -> -011
# return: ani_textram data.NumberList += output

# inter = new Interpreter()
setblock ~ -64 ~ oak_sign 

# if (#value < 0) #value *= -1
scoreboard players operation #value2 ani_ram = #value ani_ram
execute if score #value ani_ram matches ..-1 run scoreboard players operation #value2 ani_ram *= -1 numbers

execute if score #value ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+00"},{"score":{"name":"#value2","objective":"ani_ram"}}]'
execute if score #value ani_ram matches 10..99 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+0"},{"score":{"name":"#value2","objective":"ani_ram"}}]'
execute if score #value ani_ram matches 100.. at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+"},{"score":{"name":"#value2","objective":"ani_ram"}}]'
execute if score #value ani_ram matches -9..-1 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-00"},{"score":{"name":"#value2","objective":"ani_ram"}}]'
execute if score #value ani_ram matches -99..-10 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-0"},{"score":{"name":"#value2","objective":"ani_ram"}}]'
execute if score #value ani_ram matches ..-100 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-"},{"score":{"name":"#value2","objective":"ani_ram"}}]'

# return text
data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1

# clear
setblock ~ -64 ~ bedrock
scoreboard players reset #value ani_ram
scoreboard players reset #value2 ani_ram

#execute if score #value ani_ram matches 0.. store result storage ani_textram ID int 1 run scoreboard players get #value ani_ram
#execute if score #value ani_ram matches ..-1 store result storage ani_textram ID int -1 run scoreboard players get #value ani_ram

#setblock ~ -64 ~ oak_sign 

#execute if score #value ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+00"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches 10..99 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+0"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches 100.. at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches -9..-1 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-00"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches -99..-10 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-0"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches ..-100 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'

#execute at @s run data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1
#setblock ~ -64 ~ bedrock

#scoreboard players reset #value ani_ram
