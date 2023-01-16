# Create Bingus Hp Bar
bossbar add bingus_hp {"text":"BINGUS","color":"red","bold":true}
bossbar set minecraft:bingus_hp players @a
bossbar set minecraft:bingus_hp color red
bossbar set minecraft:bingus_hp max 350
bossbar set minecraft:bingus_hp value 350

# Prepare Bingus
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["bingusbody2"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["bingusbody"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:'minecraft:diamond',Count:1b,tag:{CustomModelData:222}},{}]}]}
summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:0b,NoAI:1b,CustomName:'{"text":"binguscore"}',Health:350f,Size:5,Tags:["binguscore","bingusready"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:26,Amplifier:5b,Duration:40,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:350}]}
tag @e[tag=bingusbody] add bingusinit