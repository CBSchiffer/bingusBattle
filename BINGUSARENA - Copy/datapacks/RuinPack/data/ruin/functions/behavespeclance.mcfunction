# begin charge if able
execute as @a[tag=chargecd, nbt={ActiveEffects:[{Id:11,Amplifier:1b,Duration:1,ShowParticles:1b}]}] run tag @s remove chargecd
execute as @a[nbt={Health:0f}] run tag @s add dead
execute as @a[nbt={Health:0f}] run tag @s add chargecd
execute as @a[tag=dead, nbt={Health:20f}] run effect give @s minecraft:resistance 10 1 false
execute as @a[nbt={Health:20f}] run tag @s remove dead


execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Spectral Lance","color":"aqua","bold":true}',Lore:['{"text":"Hold in your offhand to charge"}']},HideFlags:1,Unbreakable:1b,CustomModelData:1121,specLance:1b,Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}}]}] unless entity @s[tag=chargecd] unless entity @s[tag=lancech] unless entity @s[tag=dead] at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:lava run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1.5
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Spectral Lance","color":"aqua","bold":true}',Lore:['{"text":"Hold in your offhand to charge"}']},HideFlags:1,Unbreakable:1b,CustomModelData:1121,specLance:1b,Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}}]}] unless entity @s[tag=chargecd] unless entity @s[tag=dead] at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:lava run tag @s add lancech

execute as @a[tag=lancech] at @s anchored eyes unless block ^ ^ ^1 air run function ruin:lancestrike
execute as @a[tag=lancech] at @s if entity @e[type=#ruin:collidable, distance=.1..1] run function ruin:lancestrike
execute as @a[tag=lancech] at @s if block ~ ~-1 ~ minecraft:water run function ruin:lancestrike
execute as @a[tag=lancech] at @s if block ~ ~-1 ~ minecraft:lava run function ruin:lancestrike
execute as @a[tag=lancech] at @s run particle minecraft:soul_fire_flame ~ ~ ~ .1 .1 .1 .001 1 force
execute as @a[tag=lancech] at @s run tp ^ ^ ^1




