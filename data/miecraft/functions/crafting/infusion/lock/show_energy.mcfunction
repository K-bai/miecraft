# 保存到物品列表
summon minecraft:armor_stand ~ 255 ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["mie_as_text_temp"]}
data merge entity @s {Item:{tag:{mie_progress:[]}}}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/inf_energy/score
data modify entity @s Item.tag.mie_progress set from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Lore

# 显示名字
data merge entity @s {CustomNameVisible:1,CustomName:'[""]'}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/inf_energy/name
data modify entity @s CustomName set from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Name
kill @e[type=minecraft:armor_stand,tag=mie_as_text_temp]