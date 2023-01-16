# kill if no rider
execute as @e[type=minecraft:zombie, tag=courier] at @s unless entity @e[distance=..3, type=minecraft:skeleton_horse] run kill @s

# begin bone-splosion
execute as @e[tag=bonesplode] unless entity @s[tag=boneform] at @s if entity @p[distance=..4] run effect give @s minecraft:luck 1 4 true
execute as @e[tag=bonesplode] at @s if entity @p[distance=..4] run tag @s add boneform



# damage players with boneslode
execute as @e[tag=boneform] at @s positioned ~ ~-0.5 ~ run function ruin:bonestorm
execute as @e[tag=bonestorm] at @s run execute as @e[distance=..0.5] at @s run effect give @s minecraft:instant_damage 1 0
execute as @e[tag=bonestorm] at @s run execute as @e[distance=..0.5] at @s run execute as @s unless entity @s[type=item] unless entity @s[tag=bonestorm] unless entity @s[tag=courier] run tp @s ^ ^ ^0.4



execute as @e[tag=bonesplode,nbt={ActiveEffects:[{Id:26b,Amplifier:4b,Duration:1,ShowParticles:0b}]}] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,Health:40f,Tags:["lancer"],CustomName:'{"text":"Grim Courier","color":"red","bold":true}',HandItems:[{id:'minecraft:diamond_sword',Count:1b,tag:{display:{Name:'{"text":"Spectral Lance","color":"aqua","bold":true}',Lore:["{\"text\":\"Hold in your offhand to charge\"}"]},HideFlags:1,Unbreakable:1b,CustomModelData:1121,specLance:1b,Enchantments:[{id:'minecraft:sharpness',lvl:3s}]}},{}],HandDropChances:[0.050F,0.085F],ActiveEffects:[{Id:1b,Amplifier:2b,Duration:19999980,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:0.6},{Name:generic.movement_speed,Base:0.45},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:10},{Name:generic.attack_knockback,Base:1}]}
execute as @e[tag=bonesplode,nbt={ActiveEffects:[{Id:26b,Amplifier:4b,Duration:1,ShowParticles:0b}]}] run data merge entity @s {Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:0b}]}
execute as @e[tag=bonesplode,nbt={ActiveEffects:[{Id:26b,Amplifier:4b,Duration:1,ShowParticles:0b}]}] run kill @s
