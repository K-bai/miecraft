# miecraft:tick

# 添加玩家id
execute as @a unless entity @s[scores={mie_id=1..}] run scoreboard players set @s mie_id 0
scoreboard players add #mie_max_id mie_id 1
execute as @a[scores={mie_id=0},limit=1] store result score @s mie_id run scoreboard players get #mie_max_id mie_id


function miecraft:crafting/tick
function miecraft:app/tick
function miecraft:book/tick
function miecraft:update