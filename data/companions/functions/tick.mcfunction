execute as @a at @s run execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:golden_apple"}}] run execute store result score @s cmp.identifier run data get entity @s Thrower[0]
execute as @a at @s run execute as @e[type=item,distance=..2, nbt={Item:{tag:{id:"cmp.treat"}}}] run execute store result score @s cmp.identifier run data get entity @s Thrower[0]

execute as @e[type=wolf,tag=cmp.companion] at @s if entity @e[type=item,distance=..2,nbt={Item:{tag:{id:"cmp.treat"}}},sort=nearest,limit=1] if score @p[tag=cmp.has_companion, distance=..5] cmp.identifier = @e[type=item,distance=..2,sort=nearest,limit=1,nbt={Item:{tag:{id:"cmp.treat"}}}] cmp.identifier run function companions:treats/consume_treat

execute as @e[type=wolf,tag=!cmp.companion] at @s if data entity @s Owner if entity @e[type=item,distance=..2,nbt={Item:{id: "minecraft:golden_apple"}},sort=nearest,limit=1] if entity @p[tag=!cmp.has_companion, distance=..5] if score @p[tag=!cmp.has_companion, distance=..5] cmp.identifier = @e[type=item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:golden_apple"}}] cmp.identifier run function companions:create_companion

execute as @e[tag=cmp.companion] at @s if entity @e[type=item,distance=..2,nbt={Item:{id: "minecraft:book"}}] run execute as @a if score @s cmp.identifier = @e[type=wolf,tag=cmp.companion,sort=nearest,limit=1] cmp.identifier run function companions:companion_book
function companions:track_exp
execute as @a[tag=cmp.ready_for_gift] at @s if score @s cmp.identifier = @e[tag=cmp.companion,sort=nearest,limit=1,distance=..3] cmp.identifier run function companions:get_gift
execute if predicate companions:new_day run execute as @a[tag=cmp.has_companion] at @s if entity @e[tag=cmp.companion,distance=..30] run scoreboard players add @s cmp.exp 10