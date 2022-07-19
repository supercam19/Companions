gamerule sendCommandFeedback false
# identify the player as requesting companion
tag @s add cmp.cmp_request
# as all companions, check if your owner is requesting to summon companion
execute as @e[tag=cmp.companion] if score @s cmp.identifier = @a[tag=cmp.cmp_request,limit=1] cmp.identifier run tp @a[tag=cmp.cmp_request, limit=1]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 
tag @s remove cmp.cmp_request
schedule function companions:enable_command_feedback 1t