# Scoreboards
scoreboard objectives add cmp.identifier dummy
scoreboard objectives add cmp.friendship dummy
scoreboard objectives add cmp.next_level dummy
scoreboard objectives add cmp.exp dummy
scoreboard objectives add cmp.kills totalKillCount
scoreboard objectives add cmp.lvl_up_const dummy
scoreboard objectives add cmp.max_health dummy
scoreboard objectives add cmp.health dummy
scoreboard objectives add cmp.defense dummy
scoreboard objectives add cmp.damage dummy
scoreboard objectives add cmp.lvl_up_const dummy
scoreboard players set $companions cmp.lvl_up_const 150

function companions:companion_particles