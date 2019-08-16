# 保存当前坐标
execute store result entity @s SelectedItem.tag.mie_data3.X int 1 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[0] 1
execute store result entity @s SelectedItem.tag.mie_data3.Y int 1 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[1] 1
execute store result entity @s SelectedItem.tag.mie_data3.Z int 1 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[2] 1
# 保存当前维度
execute if entity @s[nbt={Dimension:0}] run data modify entity @s SelectedItem.tag.mie_data3.dimension set value "overworld"
execute if entity @s[nbt={Dimension:-1}] run data modify entity @s SelectedItem.tag.mie_data3.dimension set value "the_nether"
execute if entity @s[nbt={Dimension:1}] run data modify entity @s SelectedItem.tag.mie_data3.dimension set value "the_end"
# 效果
execute align xyz run particle minecraft:dust 0.078 0.082 0.098 1 ~.5 ~.5 ~.5 0.3 0.3 0.3 1 100
execute align xyz run playsound minecraft:entity.enderman.teleport ambient @a ~.5 ~.5 ~.5

# 提示
execute store result score @s mie_temp1 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[0] 1
execute store result score @s mie_temp2 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[1] 1
execute store result score @s mie_temp3 run data get entity @e[tag=mie_ray_mark,limit=1] Pos[2] 1
execute if entity @s[nbt={Dimension:0}] run tellraw @s [{"text":" - 本魔法罐传送点已永久设置.(主世界:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
execute if entity @s[nbt={Dimension:-1}] run tellraw @s [{"text":" - 本魔法罐传送点已永久设置.(地狱:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
execute if entity @s[nbt={Dimension:1}] run tellraw @s [{"text":" - 本魔法罐传送点已永久设置.(末地:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
# 标记自己
tag @s add mie_tp_player_temp
# 物品lore
execute if entity @s[nbt={Dimension:0}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§f传送点：(主世界,",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp1"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp2"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp3"}},")§r"]'} replace
execute if entity @s[nbt={Dimension:-1}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§f传送点：(地狱,",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp1"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp2"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp3"}},")§r"]'} replace
execute if entity @s[nbt={Dimension:1}] run setblock ~ 255 ~ oak_sign{Text1:'["§r§f传送点：(末地,",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp1"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp2"}},",",{"score":{"name":"@a[tag=mie_tp_player_temp,limit=1]","objective":"mie_temp3"}},")§r"]'} replace
data modify entity @s SelectedItem.tag.display.Lore[-2] set from block ~ 255 ~ Text1
setblock ~ 255 ~ air replace
