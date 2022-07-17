clear @s written_book{id:000019}

# Get stats
tag @s add cmp.request_stats 
execute as @e[tag=cmp.companion] if score @s cmp.identifier = @a[tag=cmp.request_stats,limit=1] cmp.identifier run tag @s add cmp.send_stats
tag @s remove cmp.request_stats
execute store result score @s cmp.max_health run attribute @e[tag=cmp.send_stats,limit=1] generic.max_health get
execute store result score @s cmp.health run data get entity @e[tag=cmp.send_stats,limit=1] Health
execute store result score @s cmp.defense run attribute @e[tag=cmp.send_stats,limit=1] generic.armor get
execute store result score @s cmp.damage run attribute @e[tag=cmp.send_stats,limit=1] generic.attack_damage get

give @s written_book{id:000019, pages:['["",{"text":"  "},{"text":"Companion\'s Book","bold":true,"underlined":true},{"text":"\\n\\nFriendship level: ","color":"reset"},{"score":{"name":"@s","objective":"cmp.friendship"}},{"text":"/10\\n\\nExperience to level-up: "},{"score":{"name":"@s","objective":"cmp.exp"}},{"text":"/"},{"score":{"name":"@s","objective":"cmp.next_level"}},{"text":"\\n\\nHealth: ","color":"light_purple"},{"score":{"name":"@s","objective":"cmp.health"},"color":"dark_purple"},{"text":"/","color":"reset"},{"score":{"name":"@s","objective":"cmp.max_health"},"color":"dark_purple"},{"text":"\\n","color":"reset"},{"text":"Damage: ","color":"red"},{"score":{"name":"@s","objective":"cmp.damage"},"color":"dark_red"},{"text":"\\n","color":"reset"},{"text":"Defense: ","color":"#fcc54e"},{"score":{"name":"@s","objective":"cmp.defense"},"color":"gold"},{"text": "\\n\\nSummon Companion", "color": "aqua", "underlined": true, "clickEvent": {"action":"run_command","value": "/function companions:summon_companion"}},{"text":"\\n"},{"text":"Refresh Book \\u267b","color":"green","underlined": true, "clickEvent":{"action":"run_command","value":"/function companions:companion_book"}}]'],title:"Companion's Book",author:Companion}

execute positioned as @e[type=wolf,sort=nearest,limit=1,tag=cmp.companion] run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:book"}},sort=nearest,limit=1]
advancement grant @s only companions:introductions