# 设置基座
setblock ~ ~ ~ minecraft:light_gray_carpet

# 生成方块as
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["mie_block","mie_block_new"],Small:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
# 复制物品
data modify entity @e[type=armor_stand,tag=mie_block_new,limit=1] ArmorItems[3] set from entity @s SelectedItem
# 生成标记
execute as @e[type=armor_stand,tag=mie_block_new,limit=1] run function mietwork:block/mark

# 删除tag
tag @e[type=armor_stand,tag=mie_block_new] remove mie_block_new
# 删除手中物品
replaceitem entity @s[gamemode=!creative] weapon.mainhand air