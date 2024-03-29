# miecraft:init

# 计分板
# 合成大魔法书
scoreboard objectives add mie_eat_book_c dummy ["Miecraft羊羊吃书计时"]
scoreboard objectives add mie_eat_book_t dummy ["Miecraft羊羊吃书类型"]

# 阅读大魔法书
scoreboard objectives add mie_cao_lectern minecraft.custom:minecraft.interact_with_lectern ["Miecraft与讲台交互4"]
scoreboard objectives add mie_book_jump trigger ["Miecraft书籍阅读跳转"]
scoreboard objectives add mie_book_reading dummy ["Miecraft正在阅读书籍"]


# 射线追踪
scoreboard objectives add mie_ray_dis dummy ["Miecraft射线距离"]

# 合成魔法罐
scoreboard objectives add mie_read_lectern minecraft.custom:minecraft.interact_with_lectern ["Miecraft与讲台交互"]
scoreboard objectives add mie_pot_c_effect dummy ["Miecraft合成罐子特效"]

# 注魔
scoreboard objectives add mie_fuck_lectern minecraft.custom:minecraft.interact_with_lectern ["Miecraft与讲台交互2"]
scoreboard objectives add mie_ri_lectern minecraft.custom:minecraft.interact_with_lectern ["Miecraft与讲台交互3"]
scoreboard objectives add mie_item_lock_t dummy ["Miecraft物品锁定时间"]
scoreboard objectives add mie_item_inf_t dummy ["Miecraft物品注魔时间"]
scoreboard objectives add mie_item_inf_c dummy ["Miecraft物品注魔时钟"]
scoreboard objectives add mie_item_inf_s dummy ["Miecraft物品注魔声音"]
scoreboard objectives add mie_item_inf_id dummy ["Miecraft物品注魔产品id"]
scoreboard objectives add mie_inf_p dummy ["Miecraft物品注魔粒子"]


# 使用道具
scoreboard objectives add mie_sword_dm minecraft.used:minecraft.diamond_sword ["Miecraft使用钻石剑"]
scoreboard objectives add mie_sword_gd minecraft.used:minecraft.golden_sword ["Miecraft使用金剑"]
scoreboard objectives add mie_use_shears minecraft.used:minecraft.carrot_on_a_stick ["Miecraft使用魔法剪刀"]

# 魔法罐相关
scoreboard objectives add mie_pot_use minecraft.used:minecraft.carrot_on_a_stick ["Miecraft使用魔法罐"]
scoreboard objectives add mie_pot_ab_t dummy ["Miecraft被魔法罐吸收的时间"]
scoreboard objectives add mie_pot_color dummy ["Miecraft魔法罐粒子颜色"]

scoreboard objectives add mie_potion_t dummy ["Miecraft魔法罐丢药水时间"]
scoreboard objectives add mie_green_t dummy ["Miecraft绿魔法罐清树干时间"]
scoreboard objectives add mie_black_x dummy ["Miecraft玩家用黑魔法罐的x坐标"]
scoreboard objectives add mie_black_y dummy ["Miecraft玩家用黑魔法罐的y坐标"]
scoreboard objectives add mie_black_z dummy ["Miecraft玩家用黑魔法罐的z坐标"]

scoreboard objectives add mie_helix_red dummy ["Miecraft红色螺旋特效"]
scoreboard objectives add mie_helix_purple dummy ["Miecraft紫色螺旋特效"]
scoreboard objectives add mie_helix_black dummy ["Miecraft黑色螺旋特效"]



# 羊羊能量
scoreboard objectives add mie_eg_white dummy ["Miecraft玩家白色羊羊能量"]
scoreboard objectives add mie_eg_orange dummy ["Miecraft玩家橙色羊羊能量"]
scoreboard objectives add mie_eg_magenta dummy ["Miecraft玩家紫红羊羊能量"]
scoreboard objectives add mie_eg_l_blue dummy ["Miecraft玩家海蓝羊羊能量"]
scoreboard objectives add mie_eg_yellow dummy ["Miecraft玩家黄色羊羊能量"]
scoreboard objectives add mie_eg_lime dummy ["Miecraft玩家柠檬羊羊能量"]
scoreboard objectives add mie_eg_pink dummy ["Miecraft玩家粉色羊羊能量"]
scoreboard objectives add mie_eg_gray dummy ["Miecraft玩家灰色羊羊能量"]
scoreboard objectives add mie_eg_l_gray dummy ["Miecraft玩家浅灰羊羊能量"]
scoreboard objectives add mie_eg_cyan dummy ["Miecraft玩家青色羊羊能量"]
scoreboard objectives add mie_eg_purple dummy ["Miecraft玩家紫色羊羊能量"]
scoreboard objectives add mie_eg_blue dummy ["Miecraft玩家蓝色羊羊能量"]
scoreboard objectives add mie_eg_brown dummy ["Miecraft玩家棕色羊羊能量"]
scoreboard objectives add mie_eg_green dummy ["Miecraft玩家绿色羊羊能量"]
scoreboard objectives add mie_eg_red dummy ["Miecraft玩家红色羊羊能量"]
scoreboard objectives add mie_eg_black dummy ["Miecraft玩家黑色羊羊能量"]

scoreboard objectives add mie_eg_white_t dummy ["Miecraft玩家白色羊羊能量暂存"]
scoreboard objectives add mie_eg_orange_t dummy ["Miecraft玩家橙色羊羊能量暂存"]
scoreboard objectives add mie_eg_magenta_t dummy ["Miecraft玩家紫红羊羊能量暂存"]
scoreboard objectives add mie_eg_l_blue_t dummy ["Miecraft玩家海蓝羊羊能量暂存"]
scoreboard objectives add mie_eg_yellow_t dummy ["Miecraft玩家黄色羊羊能量暂存"]
scoreboard objectives add mie_eg_lime_t dummy ["Miecraft玩家柠檬羊羊能量暂存"]
scoreboard objectives add mie_eg_pink_t dummy ["Miecraft玩家粉色羊羊能量暂存"]
scoreboard objectives add mie_eg_gray_t dummy ["Miecraft玩家灰色羊羊能量暂存"]
scoreboard objectives add mie_eg_l_gray_t dummy ["Miecraft玩家浅灰羊羊能量暂存"]
scoreboard objectives add mie_eg_cyan_t dummy ["Miecraft玩家青色羊羊能量暂存"]
scoreboard objectives add mie_eg_purple_t dummy ["Miecraft玩家紫色羊羊能量暂存"]
scoreboard objectives add mie_eg_blue_t dummy ["Miecraft玩家蓝色羊羊能量暂存"]
scoreboard objectives add mie_eg_brown_t dummy ["Miecraft玩家棕色羊羊能量暂存"]
scoreboard objectives add mie_eg_green_t dummy ["Miecraft玩家绿色羊羊能量暂存"]
scoreboard objectives add mie_eg_red_t dummy ["Miecraft玩家红色羊羊能量暂存"]
scoreboard objectives add mie_eg_black_t dummy ["Miecraft玩家黑色羊羊能量暂存"]



# 系统
scoreboard objectives add mie_system dummy ["Miecraft系统"]
scoreboard objectives add mie_id dummy ["Miecraft玩家id"]
scoreboard objectives add mie_temp1 dummy ["Miecraft临时1"]
scoreboard objectives add mie_temp2 dummy ["Miecraft临时2"]
scoreboard objectives add mie_temp3 dummy ["Miecraft临时3"]
scoreboard objectives add mie_temp4 dummy ["Miecraft临时4"]
scoreboard objectives add mie_temp5 dummy ["Miecraft临时5"]
scoreboard objectives add mie_temp6 dummy ["Miecraft临时6"]