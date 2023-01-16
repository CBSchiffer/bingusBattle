summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["attack1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:26b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:100}]}
summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["attack1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:26b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:100}]}
summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["attack1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:26b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:100}]}
summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["attack1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:26b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:100}]}
summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["attack1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:26b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:100}]}
spreadplayers ~ ~ 3 3 false @e[type=minecraft:vex, tag=attack1, distance=..3, limit=5, sort=nearest]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2
tag @s add boltcd
effect give @s luck 45 2 true