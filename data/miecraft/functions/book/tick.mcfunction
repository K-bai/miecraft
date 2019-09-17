# 检测看讲台
execute as @a[scores={mie_cao_lectern=1..}] run function miecraft:book/read_lectern
scoreboard players set @a[scores={mie_cao_lectern=1..}] mie_cao_lectern 0

# 检测跳转
execute as @a[scores={mie_book_jump=1..}] run function miecraft:book/jump/main
scoreboard players set @a[scores={mie_book_jump=1..}] mie_book_jump 0

# 正在阅读则判定书架、记录跳转
execute as @a[scores={mie_book_reading=1..}] run function miecraft:book/jump/record
