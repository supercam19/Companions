tag @s add cmp.eating
function companions:treats/find_owner
execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:bone", tag: {id: "cmp.treat"}}}] run execute as @a[tag=cmp.owner_eating] at @s run function companions:treats/player_eat_bone
execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:sweet_berries", tag:{id:"cmp.treat"}}}] run execute as @a[tag=cmp.owner_eating] at @s run function companions:treats/player_eat_berry
execute if entity @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:beef", tag:{id:"cmp.treat"}}}] run execute as @a[tag=cmp.owner_eating] at @s run function companions:treats/player_eat_beef
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{id:"cmp.treat"}}}]