execute as @a[sort=random,limit=1] if score @s cmp.identifier = @e[tag=cmp.companion, tag=cmp.eating, limit=1, sort=random] cmp.identifier run tag @s add cmp.owner_eating
execute unless entity @a[tag=cmp.owner_eating] run function companions:treats/find_owner