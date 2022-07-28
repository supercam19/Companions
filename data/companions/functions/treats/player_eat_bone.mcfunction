scoreboard players add @s cmp.exp 50
tellraw @s [{"text": "Your companion enjoyed the treat! Gained "}, {"text": "50 friendship xp","color": "green"}]
playsound entity.generic.eat master @s ~ ~ ~
scoreboard players add @s cmp.bones_eaten 1
advancement grant @s only companions:eat_treat
execute if entity @s[advancements={companions:eat_all_treats=false}] if score @s cmp.beef_eaten matches 1.. if score @s cmp.berries_eaten matches 1.. if score @s cmp.bones_eaten matches 1.. run advancement grant @s only companions:eat_all_treats