execute if score @e[tag=cmp.companion,sort=nearest,limit=1,nbt={Sitting:0b}] cmp.identifier = @s cmp.identifier run advancement grant @s only companions:kill_skeleton
advancement revoke @s only companions:hidden/kill_skeleton