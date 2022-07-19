loot give @s loot companions:overworld_gift
loot give @s loot companions:nether_gift
loot give @s loot companions:the_end_gift
advancement grant @s only companions:receive_gift
execute if predicate companions:in_nether run advancement grant @s only companions:nether_gift
execute if predicate companions:in_the_end run advancement grant @s only companions:the_end_gift
scoreboard players add @s cmp.exp 3
playsound entity.item.pickup master @s ~ ~ ~
tag @s remove cmp.ready_for_gift