# 找读讲台玩家
execute as @a[scores={mie_read_lectern=1..}] at @s run function miecraft:crafting/pot/read_lectern
# 清空读讲台计分板
scoreboard players set @a[scores={mie_read_lectern=1..}] mie_read_lectern 0