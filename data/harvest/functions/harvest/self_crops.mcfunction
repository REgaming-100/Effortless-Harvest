# Remove one item
execute as @e[type=item,limit=1,sort=nearest] store result entity @s Item.Count int 0.99 run data get entity @s Item.Count

# Reset crops to age 0
execute if block ~ ~ ~ potatoes run setblock ~ ~ ~ potatoes
execute if block ~ ~ ~ carrots run setblock ~ ~ ~ carrots