import math

def cir(r):
	count[0] += 1
	num = 16
	for i in range(num):
		angle = (i + count[0]/13*2) * 2*math.pi/num
		x = r * math.cos(angle)
		z = r * math.sin(angle)
		output[0] += command.format(count[0]*2+5, x, count[0]/2-3, z)
		output[0] += '\n'


count = [0]
output = ['# \n']
command = 'execute if score @s mie_pot_c_effect matches {:d} positioned ~{:.3f} ~{:.3f} ~{:.3f} run function miecraft:crafting/pot/particle/dot'


cir(2)
cir(2.5)
cir(3)
cir(3.5)
cir(4)
cir(4)
cir(4)
cir(3.5)
cir(3)
cir(2.5)
cir(2)
cir(2.5)
cir(3)

with open('pot.mcfunction', 'w') as f:
	f.write(output[0])