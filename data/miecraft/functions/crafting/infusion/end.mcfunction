execute if entity @s[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] run function miecraft:items/swords/diamond
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 100
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 0.5
kill @s