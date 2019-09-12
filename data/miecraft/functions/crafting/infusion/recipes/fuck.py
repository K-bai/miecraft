import os
file_list = [
    ['light_shell', 'mie_eg_white', 5],
    ['bio_essence', 'mie_eg_orange', 5],
    ['glue', 'mie_eg_magenta', 5],
    ['cooling_block', 'mie_eg_l_blue', 5],
    ['yellow_energy_block', 'mie_eg_yellow', 5],
    ['fibre', 'mie_eg_lime', 5],
    ['sap', 'mie_eg_pink', 5],
    ['solid_fuel', 'mie_eg_gray', 5],
    ['metal_fastener', 'mie_eg_l_gray', 2],
    ['prismarine_baffle', 'mie_eg_cyan', 5],
    ['obsidian_crystal', 'mie_eg_purple', 1],
    ['blue_energy_block', 'mie_eg_blue', 5],
    ['heavy_shell', 'mie_eg_brown', 5],
    ['wooden_handle', 'mie_eg_green', 5],
    ['red_energy_block', 'mie_eg_red', 5],
    ['clear_ender_glass', 'mie_eg_black', 2],
]


content = 'scoreboard players set @s {0} {1:d}'

for name in file_list:
    os.mkdir(name[0])
    with open(name[0]+'/energy.mcfunction', 'w') as f:
        f.write(content.format(name[1], name[2]))