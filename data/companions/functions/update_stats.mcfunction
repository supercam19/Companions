execute store result score @s cmp.friendship run scoreboard players get @a[tag=cmp.send_friendship,limit=1] cmp.friendship
effect give @s[scores={cmp.friendship=0}] minecraft:health_boost 1000000 4 true
effect give @s[scores={cmp.friendship=0}] minecraft:strength 1000000 0 true
attribute @s[scores={cmp.friendship=0}] generic.armor base set 0
effect give @s[scores={cmp.friendship=1}] minecraft:health_boost 1000000 5 true
effect give @s[scores={cmp.friendship=1}] minecraft:strength 1000000 1 true
attribute @s[scores={cmp.friendship=1}] generic.armor base set 2
effect give @s[scores={cmp.friendship=2}] minecraft:health_boost 1000000 6 true
effect give @s[scores={cmp.friendship=2}] minecraft:strength 1000000 2 true
attribute @s[scores={cmp.friendship=2}] generic.armor base set 4
effect give @s[scores={cmp.friendship=3}] minecraft:health_boost 1000000 7 true
effect give @s[scores={cmp.friendship=3}] minecraft:strength 1000000 3 true
attribute @s[scores={cmp.friendship=3}] generic.armor base set 6
effect give @s[scores={cmp.friendship=4}] minecraft:health_boost 1000000 8 true
effect give @s[scores={cmp.friendship=4}] minecraft:strength 1000000 4 true
attribute @s[scores={cmp.friendship=4}] generic.armor base set 8
effect give @s[scores={cmp.friendship=5}] minecraft:health_boost 1000000 9 true
effect give @s[scores={cmp.friendship=5}] minecraft:strength 1000000 5 true
attribute @s[scores={cmp.friendship=5}] generic.armor base set 10
effect give @s[scores={cmp.friendship=6}] minecraft:health_boost 1000000 10 true
effect give @s[scores={cmp.friendship=6}] minecraft:strength 1000000 6 true
attribute @s[scores={cmp.friendship=6}] generic.armor base set 12
effect give @s[scores={cmp.friendship=7}] minecraft:health_boost 1000000 11 true
effect give @s[scores={cmp.friendship=7}] minecraft:strength 1000000 7 true
attribute @s[scores={cmp.friendship=7}] generic.armor base set 14
effect give @s[scores={cmp.friendship=8}] minecraft:health_boost 1000000 12 true
effect give @s[scores={cmp.friendship=8}] minecraft:strength 1000000 8 true
attribute @s[scores={cmp.friendship=8}] generic.armor base set 16
effect give @s[scores={cmp.friendship=9}] minecraft:health_boost 1000000 13 true
effect give @s[scores={cmp.friendship=9}] minecraft:strength 1000000 9 true
attribute @s[scores={cmp.friendship=9}] generic.armor base set 18
effect give @s[scores={cmp.friendship=10}] minecraft:health_boost 1000000 14 true
effect give @s[scores={cmp.friendship=10}] minecraft:strength 1000000 10 true
attribute @s[scores={cmp.friendship=10}] generic.armor base set 20

