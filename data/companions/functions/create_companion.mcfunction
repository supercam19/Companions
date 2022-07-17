tag @s add cmp.companion
kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}, sort=nearest, limit=1]
execute store result score @s cmp.identifier run data get entity @s Owner[0]
effect give @s regeneration 1000000 0 true
effect give @s minecraft:health_boost 1000000 4 true
effect give @s minecraft:strength 1000000 0 true
attribute @s generic.armor base set 0
playsound block.beacon.activate master @a ~ ~ ~ 
execute as @a if score @s cmp.identifier = @e[type=wolf,tag=cmp.companion,sort=nearest,limit=1] cmp.identifier run function companions:player_new_companion