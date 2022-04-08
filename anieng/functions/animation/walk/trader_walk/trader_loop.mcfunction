# @s: ani_trader
# manipulates: @s weapon.mainhand, @s invisibility
# do: Making trader invisible, clears mainhand and kill @s id necessary
# return: void

# @s.setInvisible(true)
effect give @s invisibility 999999 255 true

# @s.mainhand = air
item replace entity @s weapon.mainhand with air

# if (@s.WanderTargetReached()) @s.kill()
execute unless data entity @s WanderTarget run function anieng:util/kill_silent