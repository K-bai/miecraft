# 破坏核心的讲台
setblock ~ ~ ~ air destroy
# 召唤落雷
summon minecraft:lightning_bolt ~ ~ ~
# 提示
tellraw @a[distance=..10] [{"text":" - 能量不足 注魔失败.","italic":true,"color":"gray"}]