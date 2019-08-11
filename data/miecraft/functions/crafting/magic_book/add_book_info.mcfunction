# miecraft:crafting\magic_book\add_book_info

# 生成不完整书
function miecraft:items/not_complete_book

# 生成页面和Lore 判定是否有对应颜色
scoreboard players set @s mie_temp1 2
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
scoreboard players operation @s mie_temp3 = @s mie_eat_book_t

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"白","color":"white","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"白","color":"white","italic":false},"羊羊\\n\\n","纯洁的白羊羊拥有最纯净的羊羊能量，他们拥有无限的可能性。"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 0
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"橙","color":"gold","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"橙","color":"gold","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 1
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"紫红","color":"dark_purple","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"紫红","color":"dark_purple","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 2
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"海蓝","color":"aqua","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"海蓝","color":"aqua","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 3
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"黄","color":"yellow","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"黄","color":"yellow","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 4
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"柠","color":"green","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"柠","color":"green","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 5
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"粉","color":"light_purple","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"粉","color":"light_purple","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 6
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"灰","color":"dark_gray","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"灰","color":"dark_gray","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 7
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"浅灰","color":"gray","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"浅灰","color":"gray","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 8
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"青","color":"dark_aqua","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"青","color":"dark_aqua","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 9
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"紫","color":"dark_blue","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"紫","color":"dark_blue","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 10
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"蓝","color":"blue","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"蓝","color":"blue","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 11
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"棕","color":"dark_red","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"棕","color":"dark_red","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 12
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"绿","color":"dark_green","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"绿","color":"dark_green","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 13
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"红","color":"red","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"红","color":"red","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 14
scoreboard players operation @s mie_temp3 /= @s mie_temp1

scoreboard players operation @s mie_temp2 = @s mie_temp3
scoreboard players operation @s mie_temp2 %= @s mie_temp1
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.display.Lore append value '[{"text":"黑","color":"black","italic":false}]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.pages append value '["",{"text":"黑","color":"black","italic":false},"羊羊\\n\\n","还没想好怎么介绍"]'
execute if score @s mie_temp2 matches 1 run data modify entity @e[tag=mie_item_new,limit=1] Item.tag.mie_data1 append value 15
scoreboard players operation @s mie_temp3 /= @s mie_temp1
