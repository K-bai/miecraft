import os
file_list = [
    ['item_energy_buffer', 'mie_eg_white', 20],
    ['advanced_item_energy_buffer', 'mie_eg_l_gray', 20],
    ['item_energy_controller', 'mie_eg_white', 40],
    ['advanced_item_energy_controller', 'mie_eg_l_gray', 40],
]



content = 'scoreboard players set @s {0} {1:d}'

for name in file_list:
    os.mkdir(name[0])
    with open(name[0]+'/energy.mcfunction', 'w') as f:
        f.write(content.format(name[1], name[2]))