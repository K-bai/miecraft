# 识别成功的物品
function #miecraft:advanced_infusion/loot_items

# 粒子效果
particle minecraft:cloud ~ ~ ~ 0 0 0 .1 50
# 音效
playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 2
# 提示
tellraw @a[distance=..10] {"translate":"info.mie.infusion.success"}
# 杀自己
execute at @s align xyz positioned ~-2 ~ ~-2 run kill @e[type=item,tag=mie_item_ainf_other_locked,dx=5,dy=1,dz=5]
kill @s