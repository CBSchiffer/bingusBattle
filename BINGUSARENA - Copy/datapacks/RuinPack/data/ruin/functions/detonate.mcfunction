summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;14295039],FadeColors:[I;11823615]}]}}}}
effect give @e[type=player, distance=..5] minecraft:instant_damage 1 2
playsound minecraft:item.totem.use master @a ~ ~ ~ 1
kill @s