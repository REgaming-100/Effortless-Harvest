# Remove one seed
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds"}}] store result entity @s Item.Count int 0.99 run data get entity @s Item.Count

# Reset to age 0
setblock ~ ~ ~ wheat