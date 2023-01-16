particle minecraft:sonic_boom ~ ~ ~ .125 .125 .125 1 5 force @a
execute if entity @p[distance=..3] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16744576]}]}}}}
execute if entity @p[distance=..3] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 20
execute if entity @p[distance=..3] run effect give @e[type=player, distance=..5] minecraft:instant_damage 1 4
execute if entity @p[distance=..3] run summon minecraft:tnt ~ ~ ~
execute unless block ~ ~ ~ minecraft:air run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16744576]}]}}}}
execute unless block ~ ~ ~ minecraft:air run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 20
execute unless block ~ ~ ~ minecraft:air run summon minecraft:tnt ~ ~ ~
execute unless entity @p[distance=..3] if block ~ ~ ~ minecraft:air positioned ^ ^ ^1 run function ruin:fire_laser
