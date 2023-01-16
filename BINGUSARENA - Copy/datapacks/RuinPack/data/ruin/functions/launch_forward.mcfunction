scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy

scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy

execute store result score @s x1 run data get entity @s Pos[0] 1000
execute store result score @s y1 run data get entity @s Pos[1] 1000
execute store result score @s z1 run data get entity @s Pos[2] 1000

tp @s ^ ^.035 ^.22
# tp @s ~ ~.2 ~

execute store result score @s x2 run data get entity @s Pos[0] 1000
execute store result score @s y2 run data get entity @s Pos[1] 1000
execute store result score @s z2 run data get entity @s Pos[2] 1000

scoreboard players operation @s x2 -= @s x1
execute store result entity @s Motion[0] double 0.008 run scoreboard players get @s x2
scoreboard players operation @s y2 -= @s y1
execute store result entity @s Motion[1] double 0.005 run scoreboard players get @s y2
scoreboard players operation @s z2 -= @s z1
execute store result entity @s Motion[2] double 0.008 run scoreboard players get @s z2
