# 生成烟花
execute anchored eyes run summon minecraft:firework_rocket ^ ^ ^.5 {Tags:["mie_magenta_firework_new"],FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I; 12403891]}]}}},ShotAtAngle:1,LifeTime:20}
# 修改motion
summon area_effect_cloud ^ ^ ^1 {Tags:["mie_magenta_mark"]}
execute store result score @s mie_temp1 run data get entity @s Pos[0] 1000
execute store result score @s mie_temp2 run data get entity @e[tag=mie_magenta_mark,limit=1] Pos[0] 1000
scoreboard players operation @s mie_temp2 -= @s mie_temp1
execute store result entity @e[tag=mie_magenta_firework_new,limit=1] Motion[0] double 0.001 run scoreboard players get @s mie_temp2

execute store result score @s mie_temp1 run data get entity @s Pos[1] 1000
execute store result score @s mie_temp2 run data get entity @e[tag=mie_magenta_mark,limit=1] Pos[1] 1000
scoreboard players operation @s mie_temp2 -= @s mie_temp1
execute store result entity @e[tag=mie_magenta_firework_new,limit=1] Motion[1] double 0.001 run scoreboard players get @s mie_temp2

execute store result score @s mie_temp1 run data get entity @s Pos[2] 1000
execute store result score @s mie_temp2 run data get entity @e[tag=mie_magenta_mark,limit=1] Pos[2] 1000
scoreboard players operation @s mie_temp2 -= @s mie_temp1
execute store result entity @e[tag=mie_magenta_firework_new,limit=1] Motion[2] double 0.001 run scoreboard players get @s mie_temp2




kill @e[tag=mie_magenta_mark]
tag @e[tag=mie_magenta_firework_new] remove mie_magenta_firework_new