# Align Core
execute as @e[tag=binguscore] rotated as @e[limit=1,tag=bingusbody2] run tp @s ~ ~ ~ ~ ~
effect give @e[type=slime] minecraft:invisibility 1 0 true
execute as @e[limit=1,tag=bingusbody] at @s unless entity @e[tag=exhaust] run tp @e[tag=binguscore] ~ ~3.25 ~
execute as @e[limit=1,tag=bingusbody] at @s if entity @e[tag=exhaust] run tp @e[tag=binguscore] ~ ~-.5 ~
execute as @e[tag=bingusbody] at @s rotated as @e[limit=1,tag=bingusbody2] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=binguscore] at @s unless entity @e[tag=exhaust] run tp @s ^ ^ ^.5
execute as @e[tag=binguscore] at @s if entity @e[tag=exhaust] run tp @s ^ ^ ^1
execute if entity @p[tag=target] at @e[limit=1,tag=bingusbody] as @e[tag=bingusready] run function ruin:binguswalkcycle
execute as @e[tag=bingusslam] run effect give @s[tag=binguscore] minecraft:luck 2 5 true
execute as @e[tag=binguscore] at @s unless entity @p[tag=target] run effect give @s minecraft:luck 2 5 true
execute as @e[tag=binguscore] at @s unless entity @s[tag=bingusready] run effect give @s minecraft:luck 2 5 true
execute as @e[tag=bingusbody2] at @s unless block ~ ~ ~ air unless block ~ ~ ~ fire run tp @s ~ ~5 ~

function ruin:bingusslam
function ruin:bingusbeam
function ruin:bingusdrill

# Update Health
execute store result bossbar minecraft:bingus_hp value run data get entity @e[limit=1,tag=binguscore] Health
tag @e[tag=binguscore, nbt={Size:5}] add corealive
kill @e[tag=!corealive, nbt={NoAI:1b}]
kill @e[nbt={Item:{id:"minecraft:slime_ball"}}]
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:10,ShowParticles:0b}]}] run tag @s remove beamcd
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:7,ShowParticles:0b}]}] run tag @s remove beamcd
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:5,ShowParticles:0b}]}] run tag @s remove beamcd
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:3,ShowParticles:0b}]}] run tag @s remove beamcd
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:1,ShowParticles:0b}]}] run tag @s remove beamcd
execute as @e[nbt={ActiveEffects:[{Id:32,Amplifier:0b,Duration:8,ShowParticles:0b}]}] run say "cd over"

# Initiate Actions
execute as @e[tag=bingusready] unless entity @s[tag=slamcd] at @s if entity @p[tag=target, distance=..10] run tag @s add bingusslam
execute as @e[tag=bingusready] unless entity @s[tag=beamcd] at @s if entity @p[tag=target, distance=25..] run tag @s add bingusbeam
execute as @e[tag=bingusready] unless entity @s[tag=drillcd] at @s if entity @p[tag=target, distance=15..] run execute as @p at @s unless block ~ ~-2 ~ air run execute as @e[tag=binguscore] run tag @s add bingusdrill
execute as @e[tag=bingusinit] at @s unless entity @e[tag=binguscore] run function ruin:endofbingus