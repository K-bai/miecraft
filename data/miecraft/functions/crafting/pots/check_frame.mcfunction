# 检测顶边和下方玻璃框架
execute if block ~1 ~ ~ #minecraft:stairs[facing=west,half=bottom,shape=straight] if block ~-1 ~ ~ #minecraft:stairs[facing=east,half=bottom,shape=straight] if block ~ ~ ~1 #minecraft:stairs[facing=north,half=bottom,shape=straight] if block ~ ~ ~-1 #minecraft:stairs[facing=south,half=bottom,shape=straight] if block ~1 ~-1 ~ minecraft:glass if block ~1 ~-1 ~1 minecraft:glass if block ~1 ~-1 ~-1 minecraft:glass if block ~ ~-1 ~1 minecraft:glass if block ~ ~-1 ~-1 minecraft:glass if block ~-1 ~-1 ~ minecraft:glass if block ~-1 ~-1 ~1 minecraft:glass if block ~-1 ~-1 ~-1 minecraft:glass if block ~1 ~-2 ~ minecraft:glass if block ~1 ~-2 ~1 minecraft:glass if block ~1 ~-2 ~-1 minecraft:glass if block ~ ~-2 ~1 minecraft:glass if block ~ ~-2 ~-1 minecraft:glass if block ~-1 ~-2 ~ minecraft:glass if block ~-1 ~-2 ~1 minecraft:glass if block ~-1 ~-2 ~-1 minecraft:glass if block ~1 ~-3 ~ minecraft:glass if block ~1 ~-3 ~1 minecraft:glass if block ~1 ~-3 ~-1 minecraft:glass if block ~ ~-3 ~1 minecraft:glass if block ~ ~-3 ~-1 minecraft:glass if block ~-1 ~-3 ~ minecraft:glass if block ~-1 ~-3 ~1 minecraft:glass if block ~-1 ~-3 ~-1 minecraft:glass if block ~ ~-3 ~ minecraft:glass run tag @s add mie_frame_pass0

# 四角框架
execute if block ~1 ~ ~1 #minecraft:stairs[facing=north,half=bottom,shape=outer_left] run tag @s add mie_frame_pass1
execute if block ~1 ~ ~1 #minecraft:stairs[facing=west,half=bottom,shape=outer_right] run tag @s add mie_frame_pass1

execute if block ~1 ~ ~-1 #minecraft:stairs[facing=west,half=bottom,shape=outer_left] run tag @s add mie_frame_pass2
execute if block ~1 ~ ~-1 #minecraft:stairs[facing=south,half=bottom,shape=outer_right] run tag @s add mie_frame_pass2

execute if block ~-1 ~ ~-1 #minecraft:stairs[facing=south,half=bottom,shape=outer_left] run tag @s add mie_frame_pass3
execute if block ~-1 ~ ~-1 #minecraft:stairs[facing=east,half=bottom,shape=outer_right] run tag @s add mie_frame_pass3

execute if block ~-1 ~ ~1 #minecraft:stairs[facing=east,half=bottom,shape=outer_left] run tag @s add mie_frame_pass4
execute if block ~-1 ~ ~1 #minecraft:stairs[facing=north,half=bottom,shape=outer_right] run tag @s add mie_frame_pass4

# 加最终tag
tag @s[tag=mie_frame_pass0,tag=mie_frame_pass1,tag=mie_frame_pass2,tag=mie_frame_pass3,tag=mie_frame_pass4] add mie_frame_pass_all
tag @s remove mie_frame_pass0
tag @s remove mie_frame_pass1
tag @s remove mie_frame_pass2
tag @s remove mie_frame_pass3
tag @s remove mie_frame_pass4