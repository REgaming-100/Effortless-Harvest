# Spawn the items
execute on target if block ~ ~ ~ #harvest:crops run loot spawn ~ ~ ~ mine ~ ~ ~

# Decide next step based on crop type
execute if block ~ ~ ~ #harvest:self_crops run function harvest:harvest/self_crops
execute if block ~ ~ ~ wheat run function harvest:harvest/crops/wheat
execute if block ~ ~ ~ beetroots run function harvest:harvest/crops/beetroots

# Revoke right to live early
scoreboard players set @s harvest.interaction.lifetime 0