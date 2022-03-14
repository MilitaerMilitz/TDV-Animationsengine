execute if score #numbertolen ani_ram matches 0.. store result storage ani_vintest ID int 1 run scoreboard players get #numbertolen ani_ram
execute if score #numbertolen ani_ram matches ..-1 store result storage ani_vintest ID int -1 run scoreboard players get #numbertolen ani_ram

setblock ~ -64 ~ oak_sign 


execute if score #numbertolen ani_ram matches 0..9 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+00"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'
execute if score #numbertolen ani_ram matches 10..99 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+0"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'
execute if score #numbertolen ani_ram matches 100.. at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"+"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'
execute if score #numbertolen ani_ram matches -9..-1 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-00"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'
execute if score #numbertolen ani_ram matches -99..-10 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-0"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'
execute if score #numbertolen ani_ram matches ..-100 at @s run data modify block ~ -64 ~ Text1 set value '[{"text":"-"},{"nbt":"ID","storage":"ani_vintest","interpret":true}]'

execute at @s run data modify storage ani_vintest NubmerList append from block ~ -64 ~ Text1
setblock ~ -64 ~ bedrock



item modify entity Vinctilus container.0 anieng:test/test
scoreboard players reset #numbertolen ani_ram
