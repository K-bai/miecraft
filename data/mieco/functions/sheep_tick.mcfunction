# 理智
# 自身理智小于0降低周围羊理智 1秒减2
execute if score @s mie_eco_sanity matches ..0 run scoreboard players remove @e[type=sheep,tag=mie_sheep,distance=..10] mie_eco_sanity 200
# 自身心情低落降理智 心情小于10 1秒减0.1
execute if score @s mie_eco_mood matches ..1000 run scoreboard players remove @s mie_eco_sanity 10
# 心情好时恢复理智
execute if score @s mie_eco_mood matches 9500.. run scoreboard players add @s mie_eco_sanity 1
# 理智小于0的羊开始计时、乱跑、10秒暴毙
execute if score @s mie_eco_sanity matches ..0 run scoreboard players add @s mie_eco_insane_t 1
execute if score @s mie_eco_insane_t matches 1 run data modify entity @s Attributes[{Name:"generic.movementSpeed"}].Base set value 0.4
execute if score @s mie_eco_insane_t matches 1.. run summon minecraft:snowball ~ ~1.6 ~ {Tags:["mie_snowball_new"],Motion:[0d,-10d,0d],Item:{id:"fermented_spider_eye",Count:1,tag:{CustomModelData:13950000}}}
execute if score @s mie_eco_insane_t matches 10.. at @s run function mieco:new_sheep_zombie
execute if score @s mie_eco_insane_t matches 10.. run tp @s ~ -10 ~
execute if score @s mie_eco_insane_t matches 10.. run kill @s





# 心情
# 计算周围羊数量 半径3
execute store result score @s mie_temp1 if entity @e[type=sheep,tag=mie_sheep,distance=..3]
# 半径3羊羊数量大于14（球体积113）心情每秒减0.5
execute if score @s mie_temp1 matches 14.. run scoreboard players remove @s mie_eco_mood 50
# 半径3羊羊数量大于10（球体积113）心情每秒减0.15
execute if score @s mie_temp1 matches 10..13 run scoreboard players remove @s mie_eco_mood 15

# 计算周围羊数量 半径2
execute store result score @s mie_temp1 if entity @e[type=sheep,tag=mie_sheep,distance=..1.5]
# 半径1.5羊羊数量大于4（球体积14.13）心情每秒减0.1
execute if score @s mie_temp1 matches 4.. run scoreboard players remove @s mie_eco_mood 10

# 计算羊脚下草方块数量
scoreboard players set @s mie_temp1 0
execute if block ~ ~-1 ~1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~ ~-1 ~ #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~ ~-1 ~-1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~-1 ~-1 ~1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~-1 ~-1 ~ #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~-1 ~-1 ~-1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~1 ~-1 ~1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~1 ~-1 ~ #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
execute if block ~1 ~-1 ~-1 #mieco:sheep_happy_ground run scoreboard players add @s mie_temp1 1
# 白天小于等于1 心情每秒减0.03
execute if score #eco_time mie_system matches 1000..13000 if score @s mie_temp1 matches ..1 run scoreboard players remove @s mie_eco_mood 3
# 白天大于等于8 心情每秒加0.01
execute if score #eco_time mie_system matches 1000..13000 if score @s mie_temp1 matches 8.. run scoreboard players add @s mie_eco_mood 1


# 计算头顶是否有方块阻挡
execute store result score @s mie_temp1 run clone ~ ~1 ~ ~ 255 ~ ~ ~1 ~ filtered #uin:tech/redstone_opaque force
# 若白天晴天无方块则心情每秒加0.02
execute if score #eco_time mie_system matches 1000..13000 if score #eco_weather mie_system matches 0 if score @s mie_temp1 matches 0 run scoreboard players add @s mie_eco_mood 2
# 若夜晚晴天无方块则心情每秒减0.02
execute unless score #eco_time mie_system matches 1000..13000 if score #eco_weather mie_system matches 0 if score @s mie_temp1 matches 0 run scoreboard players remove @s mie_eco_mood 2
# 若雨天无方块且没剪毛则心情每秒减0.1
execute if score #eco_weather mie_system matches 1 if entity @s[nbt={Sheared:0b}] if score @s mie_temp1 matches 0 run scoreboard players remove @s mie_eco_mood 10


# 自身心情低落降周围羊心情 心情小于10 1秒减0.05
execute if score @s mie_eco_mood matches ..1000 run scoreboard players remove @e[type=sheep,tag=mie_sheep,distance=.1..10] mie_eco_mood 5

# 检测是否剪毛 被剪毛减10心情
scoreboard players remove @s[nbt={Sheared:1b},tag=!mie_sheep_sheared] mie_eco_mood 1000
tag @s[nbt={Sheared:1b},tag=!mie_sheep_sheared] add mie_sheep_sheared
tag @s[nbt={Sheared:0b},tag=mie_sheep_sheared] remove mie_sheep_sheared

# 检测是否交配 交配加20心情
execute store result score @s mie_temp1 run data get entity @s Age
scoreboard players add @s[scores={mie_temp1=1..},tag=!mie_sheep_can_feed] mie_eco_mood 2000
tag @s[scores={mie_temp1=1..},tag=!mie_sheep_can_feed] add mie_sheep_can_feed
tag @s[scores={mie_temp1=0},tag=mie_sheep_can_feed] remove mie_sheep_can_feed


# 心情限制
scoreboard players set @s[scores={mie_eco_mood=10001..}] mie_eco_mood 10000
scoreboard players set @s[scores={mie_eco_mood=..-1}] mie_eco_mood 0
# 理智限制
scoreboard players set @s[scores={mie_eco_sanity=10001..}] mie_eco_sanity 10000



# 显示心情
data merge entity @s {CustomName:'[""]'}
# 保存到物品列表
summon minecraft:armor_stand ~ 255 ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["mie_as_text_temp"]}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot mieco:change_text/mood_and_sanity/score
# 显示名字
execute as @e[type=minecraft:armor_stand,tag=mie_as_text_temp] run loot replace entity @s weapon.mainhand loot mieco:change_text/mood_and_sanity/name
data modify entity @s CustomName set from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Name
kill @e[type=minecraft:armor_stand,tag=mie_as_text_temp]