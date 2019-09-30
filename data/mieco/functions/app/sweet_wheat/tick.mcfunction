# 羊羊吃掉甜美小麦
execute as @e[type=minecraft:item,nbt={Item:{tag:{mie_id:"sweet_wheat"}}}] at @s if entity @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] run function mieco:app/sweet_wheat/eat
