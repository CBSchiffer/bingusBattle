# Kill Bingus
playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 100 .5
summon fireball ~ ~-1 ~ {ExplosionPower:15b,life:1,power:[0.0,-100.0,0.0]}
kill @e[type=slime,tag=binguscore]
item replace entity @e[limit=1, tag=bingusbody] weapon.mainhand with minecraft:diamond{CustomModelData:222}
kill @e[tag=bingusbody]
kill @e[tag=bingusbody2]
kill @e[tag=item, nbt={Item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:222}}}]
bossbar remove minecraft:bingus_hp
