advancement grant @s only companions:beginning
scoreboard players set @s cmp.friendship 0
scoreboard players set @s cmp.next_level 150
tag @s add cmp.has_companion
schedule function companions:check_for_gift 600s