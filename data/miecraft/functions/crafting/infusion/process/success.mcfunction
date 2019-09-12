# 识别成功的物品
function miecraft:crafting/infusion/process/loot_items

# 粒子效果
particle minecraft:cloud ~ ~ ~ 0 0 0 .1 50
# 音效
playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 2
# 提示
tellraw @a[distance=..10] {"translate":"info.mie.infusion.success"}
# 杀自己
kill @s