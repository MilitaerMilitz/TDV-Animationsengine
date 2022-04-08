# @s: ani_act
# uses: walk engine
# do: Initialize trader walk by creating a wandering trader and call trader walk to bind @s to trader.
# return: 

# tag mangement (ntep = true, walkInit(), traderWalk())
tag @s remove ani_trader_walk_init
tag @s add ani_trader_walk
tag @s add ani_walk_ntep
tag @s add ani_walk_init

# trader = new Trader()
summon wandering_trader ~ -2 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,DespawnDelay:199999980,Tags:["ani_trader"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:199999980,ShowParticles:0b}],Offers:{},HandItems:[{}, {id:"minecraft:minecart",Count:1b,tag:{UUID:{}}}]}
teleport @e[tag=ani_trader,sort=nearest,limit=1] ~ ~ ~

# trader.data.UUID = 
data modify entity @e[tag=ani_trader,sort=nearest,limit=1] HandItems[1].tag.UUID set from entity @s UUID

# trader.WanderTarget = ...
execute store result entity @e[tag=ani_trader,sort=nearest,limit=1] WanderTarget.X float 0.0001 run scoreboard players get @s ani_pwalk_x
execute store result entity @e[tag=ani_trader,sort=nearest,limit=1] WanderTarget.Y float 0.0001 run scoreboard players get @s ani_pwalk_y
execute store result entity @e[tag=ani_trader,sort=nearest,limit=1] WanderTarget.Z float 0.0001 run scoreboard players get @s ani_pwalk_z

# traderLoop(trader)
execute as @e[tag=ani_trader,sort=nearest,limit=1] at @s run function anieng:animation/walk/trader_walk/trader_loop
