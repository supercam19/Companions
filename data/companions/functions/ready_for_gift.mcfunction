tellraw @s [{"text": "Your companion has a"},{"text": " gift ", "color": "green"},{"text": "for you! Walk over to them to claim it."}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
tag @s add cmp.ready_for_gift
