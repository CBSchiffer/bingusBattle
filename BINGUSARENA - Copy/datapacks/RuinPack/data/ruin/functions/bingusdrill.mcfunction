# Set up the charge
execute as @e[tag=bingusdrill] unless entity @s[tag=drill_charge] run tag @s remove bingusready
execute as @e[tag=bingusdrill] unless entity @s[tag=drill_charge] run effect give @s minecraft:night_vision 5 0 true
execute as @e[tag=bingusdrill] unless entity @s[tag=drill_charge] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:232}

execute as @e[tag=bingusdrill] unless entity @s[tag=drill_charge] run tag @s add drill_charge

# Charge Sounds
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:98,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:96,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.1
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:94,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.2
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:92,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.3
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:90,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.4
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:88,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.5
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:86,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.6
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:84,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.7
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:82,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.8
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:80,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 1.9
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:78,ShowParticles:0b}]}] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 2
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:76,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:74,ShowParticles:0b}]}] run effect give @s minecraft:night_vision 3 1 true

# Commence Charge
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:0b,Duration:61,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:1b,Duration:59,ShowParticles:0b}]}] run tag @s add chaaarge
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run tp @s ^ ^ ^1.5
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:233}
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 0.5
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 0.5
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 0.5
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 2
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 2
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1000 2
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] if entity @p[distance=..5] run execute as @e[tag=binguscore] run tag @s add drilled
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] if entity @p[distance=..5] run gamerule mobGriefing false
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] if entity @p[distance=..5] run execute as @p at @s run summon fireball ~ ~-1 ~ {ExplosionPower:2b,life:1,power:[0.0,-100.0,0.0]}
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] positioned ~ ~1 ~ unless block ^ ^ ^1 minecraft:air run gamerule mobGriefing false
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] unless block ^ ^ ^1 minecraft:air positioned ^ ^ ^1 run fill ~-1 ~ ~-1 ~1 ~5 ~1 air destroy
execute as @e[tag=bingusbody2] at @s if entity @e[tag=chaaarge] if block ~ ~-2 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=drill_charge, nbt={ActiveEffects:[{Id:16,Amplifier:1b,Duration:1,ShowParticles:0b}]}] run tag @s add drilled
# Charge finish
execute as @e[tag=drilled] run tag @s remove bingusdrill
execute as @e[tag=drilled] run tag @s remove drill_charge
execute as @e[tag=drilled] run tag @s remove chaaarge
execute as @e[tag=drilled] run tag @s add bingusready
execute as @e[tag=drilled] run tag @s add drillcd
execute as @e[tag=drilled] run gamerule mobGriefing true
execute as @e[tag=drilled] run effect give @s minecraft:hero_of_the_village 20 1 true
execute as @e[tag=drilled] run tag @s remove drilled
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:32,Amplifier:1b,Duration:5,ShowParticles:0b}]}] run tag @s remove drillcd

