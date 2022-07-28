scoreboard players add @s cmp.exp 80
tellraw @s [{"text": "Your companion loved the treat! Gained "}, {"text": "80 friendship xp","color": "green"}]
playsound entity.generic.eat master @s ~ ~ ~
scoreboard players add @s cmp.beef_eaten 1
advancement grant @s only companions:eat_treat
execute if entity @s[advancements={companions:eat_all_treats=false}] if score @s cmp.beef_eaten matches 1.. if score @s cmp.berries_eaten matches 1.. if score @s cmp.bones_eaten matches 1.. run advancement grant @s only companions:eat_all_treats