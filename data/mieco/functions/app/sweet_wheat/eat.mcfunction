tag @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] add mie_eat_wheat

scoreboard players add @e[type=minecraft:sheep,tag=mie_eat_wheat] mie_eco_mood 1000
scoreboard players add @e[type=minecraft:sheep,tag=mie_eat_wheat] mie_eco_sanity 1000
execute at @e[type=minecraft:sheep,tag=mie_eat_wheat] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~
execute at @e[type=minecraft:sheep,tag=mie_eat_wheat] run particle minecraft:block hay_block ~ ~ ~ 0.3 0.3 0.3 1 100

tag @e[type=minecraft:sheep,tag=mie_eat_wheat] remove mie_eat_wheat
kill @s