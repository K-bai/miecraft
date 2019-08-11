# miecraft:crafting\magic_book\tick

# 书丢到羊羊面前，判断一下吃掉
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if entity @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] run function miecraft:crafting/magic_book/eat_init
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{mie_id:1}},PickupDelay:0s}] at @s if entity @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] run function miecraft:crafting/magic_book/eat

# 羊羊正在吃书
scoreboard players remove @e[scores={mie_eat_book_c=1..}] mie_eat_book_c 1
execute as @e[scores={mie_eat_book_c=79}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=70}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=60}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=50}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=40}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=30}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=20}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=10}] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/eat_effect
execute as @e[scores={mie_eat_book_c=1}] at @s run function miecraft:crafting/magic_book/out