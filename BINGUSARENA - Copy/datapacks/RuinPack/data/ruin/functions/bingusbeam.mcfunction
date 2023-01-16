# Prepare to charge the beam
execute as @e[tag=bingusbeam] unless entity @s[tag=beam_charge] run tag @s remove bingusready
execute as @e[tag=bingusbeam] unless entity @s[tag=beam_charge] run effect give @s minecraft:water_breathing 1 0 true
execute as @e[tag=bingusbeam] unless entity @s[tag=beam_charge] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:227}
execute as @e[tag=bingusbeam] unless entity @s[tag=beam_charge] run tag @s add beam_charge

# Begin Charging
execute as @e[tag=beam_charge] at @s run particle minecraft:electric_spark ~ ~1 ~ 1 1 1 .5 100 force
execute as @e[tag=beam_half] at @s run particle minecraft:reverse_portal ~ ~ ~ .5 .5 .5 1 500 force
execute as @e[tag=exhaust] at @s run particle minecraft:smoke ~ ~ ~ .5 .5 .5 .1 200 force
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:0b,Duration:2,ShowParticles:0b}]}] run effect give @s minecraft:water_breathing 8 1 true
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:159,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:158,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:144,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.1
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:129,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.2
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:115,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.3
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:114,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:100,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.4
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:86,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.5
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:85,ShowParticles:0b}]}] run tag @s add beam_half
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:71,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:70,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.6
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:54,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.7
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:40,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.8
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:24,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 1.9
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:23,ShowParticles:0b}]}] run execute as @e[tag=bingusbody2] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:18,ShowParticles:0b}]}] at @p run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["beam_pos"]}
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:17,ShowParticles:0b}]}] at @s facing entity @e[sort=nearest,limit=1,tag=beam_pos] feet run function ruin:raycast
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:14,ShowParticles:0b}]}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1000 2
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:13,ShowParticles:0b}]}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1000 1
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:5,ShowParticles:0b}]}] at @s facing entity @e[sort=nearest,limit=1,tag=beam_pos] feet run function ruin:fire_laser
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:4,ShowParticles:0b}]}] run tag @s remove bingusbeam
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:3,ShowParticles:0b}]}] run tag @s remove beam_half
execute as @e[tag=beam_charge, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:2,ShowParticles:0b}]}] run tag @s remove beam_charge
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:1b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:water_breathing 10 2 true
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:198,ShowParticles:0b}]}] run item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:231}
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:195,ShowParticles:0b}]}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 25 .01
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:193,ShowParticles:0b}]}] run tag @s add exhaust
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:190,ShowParticles:0b}]}] run tag @s add beamcd
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:180,ShowParticles:0b}]}] run effect give @s minecraft:hero_of_the_village 20 0 true
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:170,ShowParticles:0b}]}] run kill @e[tag=beam_pos]
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:5,ShowParticles:0b}]}] run tag @s remove exhaust
execute as @e[tag=binguscore, nbt={ActiveEffects:[{Id:13,Amplifier:2b,Duration:1,ShowParticles:0b}]}] run tag @s add bingusready












