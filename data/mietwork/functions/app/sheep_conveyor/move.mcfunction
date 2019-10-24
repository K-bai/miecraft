# 将范围内的羊羊进行标记 并降低移动速度 此处有dxdydz bug
execute align xyz positioned ~0.4375 ~0.32 ~0.4375 run tag @e[type=sheep,dx=0,dy=0,dz=0,tag=!mie_conveyor_sheep] add mie_conveyor_sheep_new
effect give @e[type=sheep,tag=mie_conveyor_sheep_new] minecraft:slowness 999999 10 true
tag @e[type=sheep,tag=mie_conveyor_sheep_new] add mie_conveyor_sheep
tag @e[type=sheep,tag=mie_conveyor_sheep_new] remove mie_conveyor_sheep_new
