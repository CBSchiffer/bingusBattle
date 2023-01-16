execute if score nightCount customSpawn matches 0 run function ruin:horde
execute if score nightCount customSpawn matches 1 run function ruin:mischiefs
execute if score nightCount customSpawn matches 2 run function ruin:horde
execute if score nightCount customSpawn matches 3 run function ruin:mischiefs
execute if score nightCount customSpawn matches 4 run function ruin:horde
execute if score nightCount customSpawn matches 5 run function ruin:horde
execute if score nightCount customSpawn matches 6 run function ruin:courier
execute if score nightCount customSpawn matches 7 run function ruin:mischiefs
execute if score nightCount customSpawn matches 8 run function ruin:horde
execute if score nightCount customSpawn matches 9 run function ruin:mischiefs
execute if score nightCount customSpawn matches 10 run function ruin:nightknight
execute if score nightCount customSpawn matches 11 run function ruin:mischiefs
execute if score nightCount customSpawn matches 12 run function ruin:horde
execute if score nightCount customSpawn matches 13 run function ruin:shadelurker
execute if score nightCount customSpawn matches 14 run function ruin:horde
execute if score nightCount customSpawn matches 15 run function ruin:mischiefs

scoreboard players add nightCount customSpawn 1
execute if score nightCount customSpawn matches 16 run scoreboard players set nightCount customSpawn 0
kill @s