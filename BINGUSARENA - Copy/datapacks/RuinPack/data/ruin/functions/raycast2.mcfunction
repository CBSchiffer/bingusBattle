# Cast
execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^1 run function ruin:raycast2
execute unless block ~ ~ ~ minecraft:air positioned ~ ~ ~ run execute unless entity @e[tag=bruv,distance=..1] run kill @e[tag=bruv]
execute unless block ~ ~ ~ minecraft:air positioned ~ ~ ~ unless entity @e[tag=bruv] run summon armor_stand ~ ~ ~ {Tags:["bruv"], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute if entity @e[type=#ruin:collidable,distance=..1] positioned ~ ~ ~ run execute unless entity @e[tag=bruv,distance=..1] run kill @e[tag=bruv]
execute if entity @e[type=#ruin:collidable,distance=..1] positioned ~ ~ ~ unless entity @e[tag=bruv] run summon armor_stand ~ ~ ~ {Tags:["bruv"], Invisible:1b, Invulnerable:1b, NoGravity:1b}