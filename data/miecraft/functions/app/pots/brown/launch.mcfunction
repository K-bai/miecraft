# 生成药水
execute anchored eyes run summon minecraft:potion ^ ^ ^.7 {Tags:["mie_threw_brown_potion_new","mie_threw_brown_potion","mie_threw_potion"],Potion:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"minecraft:harming"}},Motion:[0d,0d,0d],NoGravity:1}
# 计算方向
# 修改motion
summon area_effect_cloud ^ ^ ^2 {Tags:["mie_brown_mark"]}
execute store result score @s mie_temp1 run data get entity @s Pos[0] 1000
execute store result score @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp1 run data get entity @e[tag=mie_brown_mark,limit=1] Pos[0] 1000
scoreboard players operation @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp1 -= @s mie_temp1

execute store result score @s mie_temp1 run data get entity @s Pos[1] 1000
execute store result score @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp2 run data get entity @e[tag=mie_brown_mark,limit=1] Pos[1] 1000
scoreboard players operation @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp2 -= @s mie_temp1

execute store result score @s mie_temp1 run data get entity @s Pos[2] 1000
execute store result score @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp3 run data get entity @e[tag=mie_brown_mark,limit=1] Pos[2] 1000
scoreboard players operation @e[tag=mie_threw_brown_potion_new,limit=1] mie_temp3 -= @s mie_temp1
# 删除标记
kill @e[tag=mie_brown_mark]
tag @e[tag=mie_threw_brown_potion_new] remove mie_threw_brown_potion_new
# 音效
playsound minecraft:entity.splash_potion.throw ambient @a ~ ~ ~ 1 1