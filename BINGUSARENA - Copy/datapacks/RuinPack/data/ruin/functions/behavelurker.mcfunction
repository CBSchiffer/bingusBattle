# keep body close
execute as @e[tag=lurker] at @s run tp @e[limit=1,sort=nearest,tag=lurkerbody] ~ ~ ~

# kill body if there is no ai near
execute as @e[tag=lurker] at @s run tag @e[tag=lurkerbody,limit=1,sort=nearest,distance=..10] add dontkill
execute as @e[tag=lurkerbody] run kill @s[tag=!dontkill]
tag @e[tag=dontkill] remove dontkill

# teleport away if near player
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=stepcd] if entity @p[distance=..4] run particle minecraft:soul ~ ~ ~ .12 .12 .12 1 50 force @a
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=stepcd] if entity @p[distance=..4] run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 1
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=stepcd] if entity @p[distance=..4] facing entity @p eyes run function ruin:shadowstep
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:1b,Duration:1,ShowParticles:0b}]}] run tag @s remove stepcd

execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[tag=stepcd] at @s unless block ~ ~ ~ minecraft:air run tp ~ ~1 ~
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[tag=stepcd] at @s if block ~ ~-1 ~ minecraft:grass run setblock ~ ~-1 ~ minecraft:air
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[tag=stepcd] at @s if block ~ ~-1 ~ #minecraft:flowers run setblock ~ ~-1 ~ minecraft:air


# summon energy bolts
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=boltcd] if entity @p[distance=5..25] run function ruin:summon_bolts
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:2b,Duration:1,ShowParticles:0b}]}] run tag @s remove boltcd

execute as @e[type=minecraft:vex, tag=attack1] at @s if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:1b,Duration:1,ShowParticles:0b}]}] run function ruin:detonate
execute as @e[type=minecraft:vex, tag=attack1] at @s if entity @p[distance=..2] run function ruin:detonate


# fire laser
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=lasercd] if entity @p[distance=26..40] run effect give @s minecraft:slowness 5 255
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=lasercd] if entity @p[distance=26..40] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 15
execute as @e[type=minecraft:skeleton, tag=lurker] at @s unless entity @s[tag=lasercd] if entity @p[distance=26..40] run tag @s add lasercd

execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[nbt={ActiveEffects:[{Id:2b,Amplifier:255b,Duration:1,ShowParticles:0b}]}] at @s facing entity @p eyes run function ruin:fire_laser
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[nbt={ActiveEffects:[{Id:2b,Amplifier:255b,Duration:1,ShowParticles:0b}]}] run effect give @s minecraft:luck 30 3 true
execute as @e[type=minecraft:skeleton, tag=lurker] if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:3b,Duration:1,ShowParticles:0b}]}] run tag @s remove lasercd



