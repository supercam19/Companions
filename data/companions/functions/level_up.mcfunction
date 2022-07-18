playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.5
scoreboard players add @s cmp.friendship 1
scoreboard players operation @s cmp.exp -= @s cmp.next_level
tellraw @s ["",{"text":"Your companion has reached level "},{"score":{"name":"@s","objective":"cmp.friendship"},"color":"green"},{"text": "!"}]


# set xp required to level up to friendship level
scoreboard players operation @s cmp.next_level = @s cmp.friendship
# add one to required xp in case level is 0
scoreboard players add @s cmp.next_level 1
# (friendship lvl + 1) * 150
scoreboard players operation @s cmp.next_level *= $companions cmp.lvl_up_const

execute if score @s cmp.friendship matches 10 run scoreboard players set @s cmp.next_level -1

execute if score @s cmp.friendship matches 1 run advancement grant @s only companions:bonding
execute if score @s cmp.friendship matches 3 run advancement grant @s only companions:companionship
execute if score @s cmp.friendship matches 10 run advancement grant @s only companions:soulbound

tag @s add cmp.send_friendship
execute as @e[tag=cmp.companion] if score @s cmp.identifier = @a[tag=cmp.send_friendship,limit=1] cmp.identifier run function companions:update_stats
tag @s remove cmp.send_friendship
