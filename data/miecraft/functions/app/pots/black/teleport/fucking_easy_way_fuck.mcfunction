# 改变marker位置
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=mie_player_black_tp,limit=1] mie_black_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=mie_player_black_tp,limit=1] mie_black_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=mie_player_black_tp,limit=1] mie_black_z
# 传送玩家
execute at @s run tp @a[tag=mie_player_black_tp,limit=1] ~ ~ ~
kill @s