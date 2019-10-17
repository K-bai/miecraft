# 新生成羊初始化
execute as @e[type=sheep,tag=!mie_sheep] run function mieco:new_sheep

# 每只羊每秒变化
scoreboard players add @e[type=sheep,tag=mie_sheep] mie_eco_clock 1
execute as @e[type=sheep,tag=mie_sheep,scores={mie_eco_clock=1}] at @s run function mieco:sheep_tick
scoreboard players set @e[type=sheep,tag=mie_sheep,scores={mie_eco_clock=20..}] mie_eco_clock 0

# 每刻检测天气
execute as @p at @s run loot spawn ~ -1 ~ loot mieco:weather_check
execute if entity @e[type=item,nbt={Item:{tag:{mie_id:"eco_weather_rain"}}}] run scoreboard players set #eco_weather mie_system 1
execute unless entity @e[type=item,nbt={Item:{tag:{mie_id:"eco_weather_rain"}}}] run scoreboard players set #eco_weather mie_system 0
kill @e[type=item,nbt={Item:{tag:{mie_id:"eco_weather_rain"}}}]
# 每刻记录时间
execute store result score #eco_time mie_system run time query daytime

# 自身受到攻击 心情减30
scoreboard players remove @e[type=sheep,tag=mie_sheep,nbt={HurtTime:10s}] mie_eco_mood 3000
# 检测羊羊死亡掉落 周围羊羊降低理智 减30
tag @e[type=item,nbt={Item:{tag:{mie_id:"sheep_death_mark"}}}] add mie_sheep_death_mark
execute as @e[type=item,tag=mie_sheep_death_mark] at @s run scoreboard players remove @e[type=sheep,tag=mie_sheep,distance=..6] mie_eco_sanity 3000
kill @e[type=item,tag=mie_sheep_death_mark]
# 跑动雪球设置
execute as @e[type=snowball,tag=mie_snowball_new] at @s run data modify entity @s owner.L set from entity @p UUIDLeast
execute as @e[type=snowball,tag=mie_snowball_new] at @s run data modify entity @s owner.M set from entity @p UUIDMost
tag @e[type=snowball,tag=mie_snowball_new] remove mie_snowball_new
# 羊羊僵尸减周围羊理智
execute at @e[tag=mie_eco_sheep_zombie] run scoreboard players remove @e[type=sheep,tag=mie_sheep,distance=..10] mie_eco_sanity 10


# 粒子效果显示理智
execute at @e[type=sheep,tag=mie_sheep,scores={mie_eco_sanity=4000..6000,mie_eco_insane_t=0}] run particle minecraft:dust 0 0 0 .7 ~ ~.8 ~ .3 .2 .3 1 2
execute at @e[type=sheep,tag=mie_sheep,scores={mie_eco_sanity=..3999,mie_eco_insane_t=0}] run particle minecraft:dust 0 0 0 .7 ~ ~.8 ~ .3 .2 .3 1 8
execute at @e[type=sheep,tag=mie_sheep,scores={mie_eco_sanity=..1999,mie_eco_insane_t=0}] run particle minecraft:nautilus ~ ~1 ~ .3 .3 .3 0 1


function mieco:app/tick
