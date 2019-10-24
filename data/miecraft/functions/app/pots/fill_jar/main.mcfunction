# 射线触碰方块
function miecraft:ray_cast/block/main

# 如果不是羊，判断是不是储罐
## 注入能量
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #mietwork:block_base align xyz positioned ~.5 ~ ~.5 if entity @e[tag=mie_block_type_need_energy,distance=...1] run function miecraft:app/pots/fill_jar/fill
## 没有进行上一步，则抽出能量
execute if entity @s[tag=mie_no_fill_player] at @e[tag=mie_ray_mark] if block ~ ~ ~ #mietwork:block_base align xyz positioned ~.5 ~ ~.5 if entity @e[tag=mie_block_type_own_energy,distance=...1] run function miecraft:app/pots/fill_jar/clear

# 修改tag
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #mietwork:block_base align xyz positioned ~.5 ~ ~.5 if entity @e[tag=mie_block,distance=...1] run tag @s add mie_fill_player
tag @a[tag=mie_no_fill_player] remove mie_no_fill_player

# 删除实体
kill @e[tag=mie_ray_mark]


