# Spawn the items
execute on target run tag @s add harvest.looter
execute on attacker run tag @s add harvest.looter
execute as @a[tag=harvest.looter] if block ~ ~ ~ #harvest:crops run loot spawn ~ ~ ~ mine ~ ~ ~
tag @a remove harvest.looter

# Decide next step based on interaction and crop type
execute on attacker run setblock ~ ~ ~ air
execute on target if block ~ ~ ~ #harvest:self_crops run function harvest:harvest/self_crops
execute on target if block ~ ~ ~ wheat run function harvest:harvest/crops/wheat
execute on target if block ~ ~ ~ beetroots run function harvest:harvest/crops/beetroots

# Revoke right to live early
scoreboard players set @s harvest.interaction.lifetime 0