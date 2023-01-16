# Move to the next walk cycle frame
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:5b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:223}
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:224}
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:222}
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:8b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:225}
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:226}
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:1,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:222}


# Set the countdown timer for each frame
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:5b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 6 true
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 7 true
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 8 true
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:8b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 9 true
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 10 true
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 1 5 true

execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:3,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:4,ShowParticles:0b}]}] at @e[limit=1,sort=nearest,tag=bingusbody2] run effect give @a[tag=target, distance=..5] minecraft:instant_damage 1 1
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:3,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:4,ShowParticles:0b}]}] at @e[limit=1,sort=nearest,tag=bingusbody2] run effect give @a[tag=target, distance=..5] minecraft:instant_damage 1 1
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:3,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:3,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:10b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.sand.break master @a ~ ~ ~ 1000000000 0.5
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:7b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.5



# face nearest player and take a step


execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:9b,Duration:2,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s run tp @s ^ ^ ^1
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:26,Amplifier:6b,Duration:2,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s run tp @s ^ ^ ^1