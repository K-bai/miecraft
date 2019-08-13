# miecraft:crafting\magic_book\add_book_info

# 生成不完整书
function miecraft:items/books/not_complete_book

# 生成页面和Lore 判定是否有对应颜色
scoreboard players set @s mie_temp1 2
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
scoreboard players operation @s mie_temp3 = @s mie_eat_book_t

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"white"},{"text":"白","color":"white"},{"text":"]","color":"white"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"white"},{"text":"白","bold":true},{"text":"]","bold":true,"color":"white"},{"text":"羊羊\\n\\n","bold":true},"纯洁的白羊羊拥有最纯净的羊羊能量，他们拥有无限的可能性。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 0
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"gold"},{"text":"橙","color":"white"},{"text":"]","color":"gold"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"gold"},{"text":"橙","bold":true},{"text":"]","bold":true,"color":"gold"},{"text":"羊羊\\n\\n","bold":true},"天生活力的橙羊羊让人一看到就满心欢喜，充满干劲。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 1
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_purple"},{"text":"紫红","color":"white"},{"text":"]","color":"dark_purple"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_purple"},{"text":"紫红","bold":true},{"text":"]","bold":true,"color":"dark_purple"},{"text":"羊羊\\n\\n","bold":true},"紫红羊羊看似孤僻，心中可有万千烟花在绽放。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 2
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"aqua"},{"text":"海蓝","color":"white"},{"text":"]","color":"aqua"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"aqua"},{"text":"海蓝","bold":true},{"text":"]","bold":true,"color":"aqua"},{"text":"羊羊\\n\\n","bold":true},"以海蓝羊羊的天赋，任何精彩画面它都不会错过。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 3
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"yellow"},{"text":"黄","color":"white"},{"text":"]","color":"yellow"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"yellow"},{"text":"黄","bold":true},{"text":"]","bold":true,"color":"yellow"},{"text":"羊羊\\n\\n","bold":true},"黄羊羊好似羊群中的大哥，作为大家的榜样时刻关照着大家。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 4
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"green"},{"text":"柠檬","color":"white"},{"text":"]","color":"green"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"green"},{"text":"柠檬","bold":true},{"text":"]","bold":true,"color":"green"},{"text":"羊羊\\n\\n","bold":true},"柠檬羊羊凭借刻苦的学习，在植物学上造诣颇深。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 5
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"light_purple"},{"text":"粉","color":"white"},{"text":"]","color":"light_purple"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"light_purple"},{"text":"粉","bold":true},{"text":"]","bold":true,"color":"light_purple"},{"text":"羊羊\\n\\n","bold":true},"粉羊羊羊如其名，光是看到它就感到被治愈了。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 6
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_gray"},{"text":"灰","color":"white"},{"text":"]","color":"dark_gray"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_gray"},{"text":"灰","bold":true},{"text":"]","bold":true,"color":"dark_gray"},{"text":"羊羊\\n\\n","bold":true},"灰羊羊我脾气爆，我不微笑你别闹。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 7
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"gray"},{"text":"浅灰","color":"white"},{"text":"]","color":"gray"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"gray"},{"text":"浅灰","bold":true},{"text":"]","bold":true,"color":"gray"},{"text":"羊羊\\n\\n","bold":true},"浅灰羊羊以白羊羊为榜样，却怎么也追不上它。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 8
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_aqua"},{"text":"青","color":"white"},{"text":"]","color":"dark_aqua"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_aqua"},{"text":"青","bold":true},{"text":"]","bold":true,"color":"dark_aqua"},{"text":"羊羊\\n\\n","bold":true},"青羊羊磕cp磕的上瘾，没想到自己竟有此等魔力。(???)"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 9
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_blue"},{"text":"紫","color":"white"},{"text":"]","color":"dark_blue"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"紫","bold":true},{"text":"]","bold":true,"color":"dark_blue"},{"text":"羊羊\\n\\n","bold":true},"作为羊羊们中学历最高的一员，它的大发现可谓惊天动地。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 10
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"blue"},{"text":"蓝","color":"white"},{"text":"]","color":"blue"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"blue"},{"text":"蓝","bold":true},{"text":"]","bold":true,"color":"blue"},{"text":"羊羊\\n\\n","bold":true},"和水相性最好的蓝羊羊对水的掌控是游刃有余。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 11
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_red"},{"text":"棕","color":"white"},{"text":"]","color":"dark_red"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_red"},{"text":"棕","bold":true},{"text":"]","bold":true,"color":"dark_red"},{"text":"羊羊\\n\\n","bold":true},"凭借棕羊羊的外表，它获得了年度最佳反派的称号。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 12
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"dark_green"},{"text":"绿","color":"white"},{"text":"]","color":"dark_green"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"dark_green"},{"text":"绿","bold":true},{"text":"]","bold":true,"color":"dark_green"},{"text":"羊羊\\n\\n","bold":true},"在植物学上拥有极高天赋的绿羊羊对树木结构最为清楚。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 13
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"red"},{"text":"红","color":"white"},{"text":"]","color":"red"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"red"},{"text":"红","bold":true},{"text":"]","bold":true,"color":"red"},{"text":"羊羊\\n\\n","bold":true},"红羊羊在探索地狱时获得了撒旦的力量，能够操控各种金属元素。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 14
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":" - ","color":"gray"},{"text":"[","color":"black"},{"text":"黑","color":"white"},{"text":"]","color":"black"},{"text":"羊羊","color":"white"}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"[","bold":true,"color":"black"},{"text":"黑","bold":true},{"text":"]","bold":true,"color":"black"},{"text":"羊羊\\n\\n","bold":true},"黑羊羊每次都神不知鬼不觉的出现，又神不知鬼不觉的消失。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 15
scoreboard players operation @s mie_temp3 /= @s mie_temp1
