tag @s remove lancech
tag @s add landed
summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;7733219],FadeColors:[I;7274427]}]}}}}
playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1
execute as @e[type=#ruin:collidable, distance=.1..3] unless entity @s[type=#ruin:undead] run effect give @s minecraft:instant_damage 1 0 true
execute as @e[type=#ruin:collidable, distance=.1..3] if entity @s[type=#ruin:undead] run effect give @s minecraft:instant_health 1 0 true
execute as @e[type=#ruin:collidable, distance=.1..3] at @s facing entity @p[tag=landed] feet run function ruin:launch_away
tag @s remove landed
tag @s add chargecd
execute as @s at @s unless block ~ ~-1 ~ #ruin:non_destructible unless block ~1 ~-1 ~ #ruin:non_destructible unless block ~-1 ~-1 ~ #ruin:non_destructible unless block ~ ~-1 ~1 #ruin:non_destructible unless block ~ ~-1 ~-1 #ruin:non_destructible unless block ~1 ~-1 ~1 #ruin:non_destructible unless block ~1 ~-1 ~-1 #ruin:non_destructible unless block ~-1 ~-1 ~1 #ruin:non_destructible unless block ~-1 ~-1 ~-1 #ruin:non_destructible run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air destroy
execute as @s at @s unless block ~ ~ ~ #ruin:non_destructible unless block ~1 ~ ~ #ruin:non_destructible unless block ~-1 ~ ~ #ruin:non_destructible unless block ~ ~ ~1 #ruin:non_destructible unless block ~ ~ ~-1 #ruin:non_destructible unless block ~1 ~ ~1 #ruin:non_destructible unless block ~1 ~ ~-1 #ruin:non_destructible unless block ~-1 ~ ~1 #ruin:non_destructible unless block ~-1 ~ ~-1 #ruin:non_destructible run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air destroy
execute as @s at @s unless block ~ ~1 ~ #ruin:non_destructible unless block ~1 ~1 ~ #ruin:non_destructible unless block ~-1 ~1 ~ #ruin:non_destructible unless block ~ ~1 ~1 #ruin:non_destructible unless block ~ ~1 ~-1 #ruin:non_destructible unless block ~1 ~1 ~1 #ruin:non_destructible unless block ~1 ~1 ~-1 #ruin:non_destructible unless block ~-1 ~1 ~1 #ruin:non_destructible unless block ~-1 ~1 ~-1 #ruin:non_destructible run fill ~-1 ~1 ~-1 ~1 ~1 ~1 minecraft:air destroy
effect give @s minecraft:resistance 10 1 false