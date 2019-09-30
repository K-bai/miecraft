# 射线触碰羊羊切换颜色
function miecraft:ray_cast/entity/main
execute if entity @e[tag=mie_ray_target,type=sheep] run function mieco:app/portable_sheep_nmr/show
# 删除查找实体的tag
function miecraft:ray_cast/entity/delete_tag