command = 'execute if score @s mie_temp3 matches {:d} if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~{:d} ~ ~ run function miecraft:app/pots/black/teleport/recurse_x'

for i in range(30):
    print(command.format(i+1, 2**i))