# Loop through each companion (randomly; seems to be the only way) to find their companion. Once found they'll have the tag cmp.has_companion, so it will stop looping then
execute if score @s cmp.identifier = @e[type=wolf,tag=cmp.companion,sort=random,limit=1] cmp.identifier run function companions:player_new_companion
execute if entity @s[tag=!cmp.has_companion] run function companions:find_owner