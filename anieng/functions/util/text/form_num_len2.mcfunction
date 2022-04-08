# @s: no matter
# pre: executed chunk is loaded
# input: #value ani_ram
# do: Forms #value into two positions, so that output can used in tellraw or other text related things
# math: f: Z -> MC String
# math: x -> 0x, x € [0,..,9]; x, else  
# exm: 3 -> 03, 0 -> 00, 11 -> 11, -3 -> -3
# return: ani_textram data.NumberList += output

# inter = new Interpreter()
setblock ~ -64 ~ oak_sign 

# if (#value € 0..9): text = inter.interpret(0, #value)
execute if score #value ani_ram matches 0..9 run data modify block ~ -64 ~ Text1 set value '[{"text":"0"},{"score":{"name":"#value","objective":"ani_ram"}}]'

# else: text = inter.interpret(#value)
execute unless score #value ani_ram matches 0..9 run data modify block ~ -64 ~ Text1 set value '[{"score":{"name":"#value","objective":"ani_ram"}}]'

# return text
data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1

# clear
setblock ~ -64 ~ bedrock
scoreboard players reset #value ani_ram

#execute if score #value ani_ram matches 0.. store result storage ani_textram ID int 1 run scoreboard players get #value ani_ram
#execute if score #value ani_ram matches ..-1 store result storage ani_textram ID int -1 run scoreboard players get #value ani_ram

#setblock ~ -64 ~ oak_sign 

#execute if score #value ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"0"},{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute if score #value ani_ram matches 10.. at @s run data modify block ~ -64 ~ Text1 set value '[{"nbt":"ID","storage":"ani_textram","interpret":true}]'
#execute at @s run data modify storage ani_textram data.NumberList append from block ~ -64 ~ Text1

#setblock ~ -64 ~ bedrock
#scoreboard players reset #value ani_ram
