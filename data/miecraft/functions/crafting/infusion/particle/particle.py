import math

command = 'execute if entity @s[tag=mie_inf_particle_{},scores={{mie_inf_p={:d}}}] at @e[type=item,tag=mie_item_inf_core_locked,distance=..4,sort=nearest] align xyz positioned ~.5 ~.3 ~.5 run tp @s ~{:.3f} ~{:.3f} ~{:.3f}'

pos_list = [[2, 2],[2, 1],[2, 0],[2, -1],[2, -2],[-2, 2],[-2, 1],[-2, 0],[-2, -1],[-2, -2],[1, 2],[0, 2],[-1, 2],[1, -2],[0, -2],[-1, -2]]

h = 0.6
tick = 20


for pos in pos_list:
    # 写tag
    tag = ['', '']
    for i in range(len(tag)):
        if pos[i]>=0:
            tag[i] = 'p'+str(pos[i])
        else:
            tag[i] = 'm'+str(-pos[i])
    # 计算半径
    dis = math.sqrt(pos[0]**2+pos[1]**2)
    r = (dis**2+h**2)/(2*dis)
    # 计算角度
    angle = math.pi-math.asin(h/r)
    a = angle/tick
    for i in range(tick+1):
        # 转换坐标系
        end_pos = [r*math.cos(a*i), r*math.sin(a*i), r*math.cos(a*i)]
        # 1 改变原点
        end_pos[0] += (dis-r)
        end_pos[2] += (dis-r)
        # 2 改变角度
        end_pos[0] *= (pos[0]/dis)
        end_pos[2] *= (pos[1]/dis)
        print(command.format(tag[0]+tag[1], i+1, end_pos[0], end_pos[1], end_pos[2]))