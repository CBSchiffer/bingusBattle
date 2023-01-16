# Prepping the Slam
execute as @e[tag=bingusslam] unless entity @s[tag=slam_prep] run tag @s remove bingusready
execute as @e[tag=bingusslam] unless entity @s[tag=slam_prep] run effect give @s minecraft:haste 2 0 true
execute as @e[tag=bingusslam] unless entity @s[tag=slam_prep] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:227}
execute as @e[tag=bingusslam] unless entity @s[tag=slam_prep] run tag @s add slam_prep

# Lifting Leg!
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:5,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:228}
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:5,ShowParticles:0b}]}] run effect give @s minecraft:haste 4 1 true

# Bingus SLAM!
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:10,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:229}
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:13,ShowParticles:0b}]}] at @s run execute at @p[distance=..15] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["launch_tracker"]}
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:14,ShowParticles:0b}]}] at @s run effect give @p[distance=..15] minecraft:instant_damage 1 2


execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:10,ShowParticles:0b}]}] at @e[tag=bingusbody2] run fill ~-7 ~-1 ~-7 ~7 ~7 ~7 minecraft:air destroy
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:12,ShowParticles:0b}]}] run execute as @e[tag=launch_tracker] at @s facing entity @e[limit=1,sort=nearest,tag=bingusbody2] feet run tp @s ~ ~5 ~ ~ ~
execute as @e[tag=slam_prep, nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:11,ShowParticles:0b}]}] run execute as @e[tag=launch_tracker] at @s facing entity @e[limit=1,sort=nearest,tag=bingusbody2] feet run function ruin:launch_away
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:9,ShowParticles:0b}]}] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 10000 0.2
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:8,ShowParticles:0b}]}] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 10000 0.2
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:7,ShowParticles:0b}]}] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 10000 0.2
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:6,ShowParticles:0b}]}] run tag @s add slamcd
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:5,ShowParticles:0b}]}] run tag @s remove bingusslam
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:3,ShowParticles:0b}]}] run effect give @s minecraft:haste 20 2 true
execute as @e[tag=slam_prep,nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:4,ShowParticles:0b}]}] run tag @s add bingusready

execute as @e[nbt={ActiveEffects:[{Id:3,Amplifier:1b,Duration:1,ShowParticles:0b}]}] run tag @s remove slam_prep
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:2b,Duration:5,ShowParticles:0b}]}] run tag @s remove slam_prep
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:2b,Duration:2,ShowParticles:0b}]}] run tag @s remove slamcd



execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:12,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:11,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:10,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:9,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:8,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:7,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:6,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:5,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:4,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:3,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:2,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25
execute as @e[tag=binguscore,nbt={ActiveEffects:[{Id:3,Amplifier:0b,Duration:1,ShowParticles:0b}]}] run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1000000000 0.25

execute as @e[tag=launch_tracker,limit=1] store result entity @s Rotation[0] float 1 at @s run data get entity @p Rotation[0] 1
execute as @e[tag=launch_tracker,limit=1] store result entity @s Rotation[1] float 1 at @s run data get entity @p Rotation[1] 1 
execute as @a rotated as @s run tp @s @e[limit=1, sort=nearest, tag=launch_tracker]
execute as @e[tag=launch_tracker] store result score @s y_mot run data get entity @s Motion[1]
execute as @e[tag=launched] at @s unless block ~ ~-2 ~ minecraft:air unless block ~ ~-2 ~ minecraft:water unless block ~ ~-2 ~ fire run kill @s[tag=launch_tracker]
kill @e[tag=launched,scores={y_mot=-1}] 
execute as @e[tag=launch_tracker] run effect give @s[tag=!launched] minecraft:speed 2 0 true
tag @e[tag=launch_tracker,scores={y_mot=1..}] add launched
kill @e[tag=launched,nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:5,ShowParticles:0b}]}]
kill @e[tag=launched,nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:4,ShowParticles:0b}]}]
kill @e[tag=launched,nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:3,ShowParticles:0b}]}]
kill @e[tag=launched,nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:2,ShowParticles:0b}]}]
kill @e[tag=launched,nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:1,ShowParticles:0b}]}]
