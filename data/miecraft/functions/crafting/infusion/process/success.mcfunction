# 识别成功的物品
execute if entity @s[nbt={Item:{id:"minecraft:shears"}}] at @s run loot spawn ~ ~ ~ loot miecraft:items/magic_shears
# 粒子效果
particle minecraft:cloud ~ ~ ~ 0 0 0 .1 50
# 音效
playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 2
# 提示
tellraw @a[distance=..10] {"translate":"info.mie.infusion.success"}
# 杀自己
kill @s