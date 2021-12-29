# call as animation Armorstand
# Resets Armorstand pose -> set all body tiles and speeds 0

scoreboard players set #value ani_ram 0

function anieng:animation/move/instant/rotate

function anieng:animation/move/instant/body_x
function anieng:animation/move/instant/body_y
function anieng:animation/move/instant/body_z

function anieng:animation/move/instant/head_x
function anieng:animation/move/instant/head_y
function anieng:animation/move/instant/head_z

function anieng:animation/move/instant/left_arm_x
function anieng:animation/move/instant/left_arm_y
function anieng:animation/move/instant/left_arm_z

function anieng:animation/move/instant/right_arm_x
function anieng:animation/move/instant/right_arm_y
function anieng:animation/move/instant/right_arm_z

function anieng:animation/move/instant/left_leg_x
function anieng:animation/move/instant/left_leg_y
function anieng:animation/move/instant/left_leg_z

function anieng:animation/move/instant/right_leg_x
function anieng:animation/move/instant/right_leg_y
function anieng:animation/move/instant/right_leg_z


# speed
scoreboard players set @s ani_rot_speed 1
scoreboard players set @s ani_hdbo_speed 1
scoreboard players set @s ani_arm_speed 1
scoreboard players set @s ani_leg_speed 1