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
execute if entity @s[nbt={Dimension:0}] run tellraw @s [{"translate":"info.mie.pot.black.set_p_ow"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
execute if entity @s[nbt={Dimension:-1}] run tellraw @s [{"translate":"info.mie.pot.black.set_p_ne"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
execute if entity @s[nbt={Dimension:1}] run tellraw @s [{"translate":"info.mie.pot.black.set_p_ed"},{"score":{"name":"*","objective":"mie_temp1"}},",",{"score":{"name":"*","objective":"mie_temp2"}},",",{"score":{"name":"*","objective":"mie_temp3"}},")"]
# 标记自己
tag @s add mie_tp_player_temp
# 物品lore
summon minecraft:armor_stand ~ 255 ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["mie_as_lore_temp"]}
execute if entity @s[nbt={Dimension:0}] run loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp] weapon.mainhand loot miecraft:change_text/pot_black_point/overworld
execute if entity @s[nbt={Dimension:-1}] run loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp] weapon.mainhand loot miecraft:change_text/pot_black_point/nether
execute if entity @s[nbt={Dimension:1}] run loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp] weapon.mainhand loot miecraft:change_text/pot_black_point/end
data modify entity @s SelectedItem.tag.display.Lore[-2] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp]
