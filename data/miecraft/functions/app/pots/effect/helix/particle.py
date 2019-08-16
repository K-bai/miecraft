import math
#command = 'execute if score @s mie_helix_red matches {:d} run particle minecraft:block red_concrete ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 0'
command = 'execute if score @s mie_helix_red matches {:d} run particle minecraft:dust 0.631 0.153 0.133 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1'

height = 1
radius = 1
circle = 3
ticks = 40


up_step = height/ticks
angle_step = 2*math.pi*circle / ticks

angle = 0
for i in range(ticks):
    print(command.format(i, radius*math.sin(angle), i*up_step, radius*math.cos(angle)))
    angle += angle_step

angle = 2*math.pi / 2
for i in range(ticks):
    print(command.format(i, radius*math.sin(angle), i*up_step, radius*math.cos(angle)))
    angle += angle_step

