say eating treat
tag @s add cmp.eating
function companions:treats/find_owner
execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:bone", tag: {id: "cmp.treat"}}}] run execute as @a[tag=cmp.owner_eating] at @s run function companions:treats/player_eat_bone
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{id:"cmp.treat"}}}]