# @s: no matter
# manipulates: Position
# do: Teleport @s backwards for speed 6 and consider if air or slab is under @s
# return: void

teleport @s ^ ^ ^-0.2
execute if block ^ ^-0.1 ^0.2 air run teleport @s ~ ~-0.1 ~
execute if block ^ ^-0.1 ^0.2 #slabs positioned ~ ~-0.1 ~ align y positioned ~ ~0.5 ~ run teleport @s ^ ^ ^-0.2