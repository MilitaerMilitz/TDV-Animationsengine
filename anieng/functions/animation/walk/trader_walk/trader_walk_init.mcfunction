tag @s remove ani_trader_walk_init
tag @s add ani_trader_walk
tag @s add ani_walk_ntp
tag @s add ani_walk_init

summon wandering_trader ~ -2 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,DespawnDelay:199999980,Tags:["ani_trader"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:199999980,ShowParticles:0b}],Offers:{},HandItems:[{}, {id:"minecraft:minecart",Count:1b,tag:{UUID:{}}}]}
teleport @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] ~ ~ ~

data modify entity @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] HandItems[1].tag.UUID set from entity @s UUID

execute store result entity @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] WanderTarget.X float 0.0001 run scoreboard players get @s ani_pwalk_x
execute store result entity @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] WanderTarget.Y float 0.0001 run scoreboard players get @s ani_pwalk_y
execute store result entity @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] WanderTarget.Z float 0.0001 run scoreboard players get @s ani_pwalk_z

execute as @e[type=wandering_trader,tag=ani_trader,sort=nearest,limit=1] at @s run function anieng:animation/walk/trader_walk/trader_loop
