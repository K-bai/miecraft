# miecraft:crafting\magic_book\add_book_info

# 生成不完整书
loot spawn ~ ~ ~ loot miecraft:items/books/magic_book_not_finished
# 标记新不完整书
tag @e[type=item,nbt={Item:{tag:{mie_id:"magic_book_not_finished",mie_temp:"new_item"}}}] add mie_item_new
data remove entity @e[tag=mie_item_new,limit=1] Item.tag.mie_temp

# 保存在书里
execute if score @s mie_eg_white matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 0
execute if score @s mie_eg_orange matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 1
execute if score @s mie_eg_magenta matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 2
execute if score @s mie_eg_l_blue matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 3
execute if score @s mie_eg_yellow matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 4
execute if score @s mie_eg_lime matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 5
execute if score @s mie_eg_pink matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 6
execute if score @s mie_eg_gray matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 7
execute if score @s mie_eg_l_gray matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 8
execute if score @s mie_eg_cyan matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 9
execute if score @s mie_eg_purple matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 10
execute if score @s mie_eg_blue matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 11
execute if score @s mie_eg_brown matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 12
execute if score @s mie_eg_green matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 13
execute if score @s mie_eg_red matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 14
execute if score @s mie_eg_black matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 15



# 生成页面
execute if score @s mie_eg_white matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"white"},{"text":"白","bold":true},{"text":"]","bold":true,"color":"white"},{"text":"羊羊\\n\\n","bold":true},"纯洁的白羊羊拥有最纯净的羊羊能量，他们拥有无限的可能性。"]'
execute if score @s mie_eg_orange matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"gold"},{"text":"橙","bold":true},{"text":"]","bold":true,"color":"gold"},{"text":"羊羊\\n\\n","bold":true},"天生活力的橙羊羊让人一看到就满心欢喜，充满干劲。"]'
execute if score @s mie_eg_magenta matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_purple"},{"text":"紫红","bold":true},{"text":"]","bold":true,"color":"dark_purple"},{"text":"羊羊\\n\\n","bold":true},"紫红羊羊看似孤僻，心中可有万千烟花在绽放。"]'
execute if score @s mie_eg_l_blue matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"aqua"},{"text":"海蓝","bold":true},{"text":"]","bold":true,"color":"aqua"},{"text":"羊羊\\n\\n","bold":true},"以海蓝羊羊的天赋，任何精彩画面它都不会错过。"]'
execute if score @s mie_eg_yellow matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"yellow"},{"text":"黄","bold":true},{"text":"]","bold":true,"color":"yellow"},{"text":"羊羊\\n\\n","bold":true},"黄羊羊好似羊群中的大哥，作为大家的榜样时刻关照着大家。"]'
execute if score @s mie_eg_lime matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"green"},{"text":"柠檬","bold":true},{"text":"]","bold":true,"color":"green"},{"text":"羊羊\\n\\n","bold":true},"柠檬羊羊凭借刻苦的学习，在植物学上造诣颇深。"]'
execute if score @s mie_eg_pink matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"light_purple"},{"text":"粉","bold":true},{"text":"]","bold":true,"color":"light_purple"},{"text":"羊羊\\n\\n","bold":true},"粉羊羊羊如其名，光是看到它就感到被治愈了。"]'
execute if score @s mie_eg_gray matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_gray"},{"text":"灰","bold":true},{"text":"]","bold":true,"color":"dark_gray"},{"text":"羊羊\\n\\n","bold":true},"灰羊羊我脾气爆，我不微笑你别闹。"]'
execute if score @s mie_eg_l_gray matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"gray"},{"text":"浅灰","bold":true},{"text":"]","bold":true,"color":"gray"},{"text":"羊羊\\n\\n","bold":true},"浅灰羊羊以白羊羊为榜样，却怎么也追不上它。"]'
execute if score @s mie_eg_cyan matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_aqua"},{"text":"青","bold":true},{"text":"]","bold":true,"color":"dark_aqua"},{"text":"羊羊\\n\\n","bold":true},"青羊羊磕cp磕的上瘾，没想到自己竟有此等魔力。(???)"]'
execute if score @s mie_eg_purple matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"紫","bold":true},{"text":"]","bold":true,"color":"dark_blue"},{"text":"羊羊\\n\\n","bold":true},"作为羊羊们中学历最高的一员，它的大发现可谓惊天动地。"]'
execute if score @s mie_eg_blue matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"blue"},{"text":"蓝","bold":true},{"text":"]","bold":true,"color":"blue"},{"text":"羊羊\\n\\n","bold":true},"和水相性最好的蓝羊羊对水的掌控是游刃有余。"]'
execute if score @s mie_eg_brown matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_red"},{"text":"棕","bold":true},{"text":"]","bold":true,"color":"dark_red"},{"text":"羊羊\\n\\n","bold":true},"凭借棕羊羊的外表，它获得了年度最佳反派的称号。"]'
execute if score @s mie_eg_green matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_green"},{"text":"绿","bold":true},{"text":"]","bold":true,"color":"dark_green"},{"text":"羊羊\\n\\n","bold":true},"在植物学上拥有极高天赋的绿羊羊对树木结构最为清楚。"]'
execute if score @s mie_eg_red matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"red"},{"text":"红","bold":true},{"text":"]","bold":true,"color":"red"},{"text":"羊羊\\n\\n","bold":true},"红羊羊在探索地狱时获得了撒旦的力量，能够操控各种金属元素。"]'
execute if score @s mie_eg_black matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"black"},{"text":"黑","bold":true},{"text":"]","bold":true,"color":"black"},{"text":"羊羊\\n\\n","bold":true},"黑羊羊每次都神不知鬼不觉的出现，又神不知鬼不觉的消失。"]'

# 保存到物品列表
summon minecraft:armor_stand ~ 255 ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["mie_as_text_temp"]}
data merge entity @e[tag=mie_item_new,limit=1] {Item:{tag:{mie_progress:[]}}}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/magic_book_lore/score_1
data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_progress set from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Lore

# 保存Lore
execute as @e[tag=mie_item_new,limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/magic_book_lore/name
data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Name


# 添加新lore
data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '{"translate":"item.mie.lore1.notbook"}'
# 保存到物品列表
data merge entity @e[tag=mie_item_new,limit=1] {Item:{tag:{mie_progress:[]}}}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/magic_book_lore/score_0
data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_progress set from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Lore

# 保存Lore
execute as @e[tag=mie_item_new,limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp] weapon.mainhand loot miecraft:change_text/magic_book_lore/name
data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append from entity @e[type=minecraft:armor_stand,tag=mie_as_text_temp,limit=1] HandItems[0].tag.display.Name
kill @e[type=minecraft:armor_stand,tag=mie_as_text_temp]



# 生成lore
#execute as @e[tag=mie_item_new] if entity @s[nbt={Item:{tag:{mie_data1:[0]}}}] run data modify entity @s Item.tag.display.Lore append value {"translate":"item.mie.loreX_white.notbook"}
