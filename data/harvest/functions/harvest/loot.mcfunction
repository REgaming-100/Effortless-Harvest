# Spawn the items
execute if block ~ ~ ~ #harvest:crops run loot spawn ~ ~ ~ mine ~ ~ ~

# Decide next step based on crop type
execute if block ~ ~ ~ #harvest:self_crops run function harvest:harvest/self_crops
execute if block ~ ~ ~ wheat run function harvest:harvest/seed_crops {crop: wheat, seed: "wheat_seeds"}
execute if block ~ ~ ~ beetroots run function harvest:harvest/seed_crops {crop: beetroots, seed: "beetroot_seeds"}