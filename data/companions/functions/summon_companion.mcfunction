# identify the player as requesting companion
tag @s add cmp.cmp_request
# as all companions, check if your owner is requesting to summon companion
execute as @e[tag=cmp.companion] if score @s cmp.identifier = @a[tag=cmp.cmp_request,limit=1] cmp.identifier run tp @a[tag=cmp.cmp_request, limit=1]
tag @s remove cmp.cmp_request