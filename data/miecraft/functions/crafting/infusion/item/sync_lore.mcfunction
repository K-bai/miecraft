# 标记自己
tag @s add mie_inf_item_temp
# 获得分数
scoreboard players set @s mie_temp1 0
execute store result score @s mie_temp1 run data get entity @s Item.tag.mie_data2
# 修改牌子
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§f白色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:1}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§6橙色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:2}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§5紫红羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:3}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§b海蓝羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:4}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§e黄色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:5}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§a柠色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:6}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§d粉色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:7}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§8灰色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§7浅灰羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:9}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§3青色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:10}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§1紫色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:11}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§9蓝色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:12}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§4棕色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:13}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§2绿色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:14}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§c红色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
execute if entity @s[nbt={Item:{tag:{mie_data1:15}}}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§0黑色羊羊能量：§f",{"score":{"name":"@e[tag=mie_inf_item_temp,limit=1]","objective":"mie_temp1"}}]'} replace
# 复制nbt
data modify entity @s Item.tag.display.Lore[-1] set from block ~ 255 ~ Text1
# 删除牌子
setblock ~ 255 ~ air replace

# 修改Damage
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 0 run data modify entity @s Item.tag.Damage set value 25
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 1..49 run data modify entity @s Item.tag.Damage set value 20
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 50..89 run data modify entity @s Item.tag.Damage set value 7
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 90.. run data modify entity @s Item.tag.Damage set value 0

execute unless entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 0 run data modify entity @s Item.tag.Damage set value 25
execute unless entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 1..24 run data modify entity @s Item.tag.Damage set value 20
execute unless entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 25..44 run data modify entity @s Item.tag.Damage set value 7
execute unless entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 45.. run data modify entity @s Item.tag.Damage set value 0

# 删除tag
tag @s remove mie_inf_item_temp



