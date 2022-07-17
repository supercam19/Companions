# if your companion is not sitting and you kill an enemy, you earn 1 xp
execute as @a if score @s cmp.identifier = @e[type=wolf,sort=nearest,limit=1,tag=cmp.companion,nbt={Sitting:0b}] cmp.identifier if score @s cmp.kills matches 1.. run function companions:exp_for_kill
scoreboard players set @a cmp.kills 0
execute as @a if score @s cmp.friendship matches ..9 if score @s cmp.exp >= @s cmp.next_level run function companions:level_up