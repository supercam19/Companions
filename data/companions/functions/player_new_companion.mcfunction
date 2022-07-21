advancement grant @s only companions:beginning
scoreboard players set @s cmp.friendship 0
scoreboard players set @s cmp.next_level 150
tag @s add cmp.has_companion
schedule function companions:check_for_gift 600s

execute store result score @s cmp.health run data get entity @e[type=wolf,sort=nearest,limit=1,tag=cmp.companion] Health
scoreboard players set @s cmp.max_health 40
scoreboard players set @s cmp.damage 7
scoreboard players set @s cmp.defense 0