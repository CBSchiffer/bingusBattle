execute as @e[type=minecraft:end_crystal] run execute store result entity @s BeamTarget.X int 1 run data get entity @e[tag=bruv,limit=1] Pos[0] 1
execute as @e[type=minecraft:end_crystal] run execute store result entity @s BeamTarget.Y int 1 run data get entity @e[tag=bruv,limit=1] Pos[1] 1
execute as @e[type=minecraft:end_crystal] run execute store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=bruv,limit=1] Pos[2] 1

execute as @a[tag=!draincd] if entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] at @s rotated as @s run function ruin:raycast2
execute as @a[tag=!draincd] if entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] at @s rotated as @s unless entity @e[type=end_crystal] run summon end_crystal ~ ~-.5 ~
execute as @a[tag=!draincd] if entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] run effect give @s[tag=!draining] minecraft:slowness 3 55 true
execute as @a[tag=!draincd,nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] run playsound minecraft:entity.evoker.prepare_summon master @a[tag=!draining] ~ ~ ~ 1000 .75
execute as @a[tag=!draincd,nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] run tag @s[tag=!draining] add draining
execute as @e[tag=bruv] at @s run effect give @e[type=#ruin:collidable,distance=..3] minecraft:instant_damage 1 0 true
execute as @e[tag=bruv] at @s if entity @e[type=#ruin:collidable,distance=..3] run particle minecraft:sculk_soul ~ ~1 ~ .125 .125 .125 .5 20
execute as @e[tag=bruv] at @s if entity @e[type=#ruin:collidable,distance=..3] run effect give @a[tag=!draincd] minecraft:regeneration 3 2 false
execute as @a[tag=draincd] run kill @e[type=end_crystal]
execute as @a[tag=draincd] run kill @e[tag=bruv]
execute as @a[tag=!draincd] unless entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] if entity @s[tag=draining] run effect give @s[tag=!draincd] minecraft:speed 15 0 false
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] if entity @s[tag=draining] run tag @s[tag=!draincd] add draincd

execute as @a[nbt={ActiveEffects:[{Id:2,Amplifier:55b,Duration:5,ShowParticles:0b}]}] run effect give @s minecraft:speed 15 0 false
execute as @a[nbt={ActiveEffects:[{Id:2,Amplifier:55b,Duration:3,ShowParticles:0b}]}] run tag @s add draincd
execute as @a[tag=draincd, nbt={ActiveEffects:[{Id:1,Amplifier:0b,Duration:2,ShowParticles:1b}]}] run tag @s remove draincd
execute as @a[tag=draincd] run effect clear @s minecraft:slowness
execute as @a[tag=draincd] run tag @s remove draining







