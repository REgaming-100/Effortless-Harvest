execute if score @s harvest.config matches 2 run function harvest:macro/toggle_tag {tag: harvest.standHarvest}

execute if score @s harvest.config matches 3 run function harvest:macro/toggle_tag {tag: harvest.crouchHarvest}

execute if entity @s[tag=!harvest.standHarvest,tag=!harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: " ", crouching: " "}
execute if entity @s[tag=!harvest.standHarvest,tag=harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: " ", crouching: "✔"}
execute if entity @s[tag=harvest.standHarvest,tag=!harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: "✔", crouching: " "}
execute if entity @s[tag=harvest.standHarvest,tag=harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: "✔", crouching: "✔"}

scoreboard players reset @s harvest.config