tag @s[scores={harvest.config=2},tag=harvest.standHarvest] add harvest.removeTag
tag @s[scores={harvest.config=2}] add harvest.standHarvest
tag @s[scores={harvest.config=2},tag=harvest.removeTag] remove harvest.standHarvest
tag @s[scores={harvest.config=2},tag=harvest.removeTag] remove harvest.removeTag

tag @s[scores={harvest.config=3},tag=harvest.crouchHarvest] add harvest.removeTag
tag @s[scores={harvest.config=3}] add harvest.crouchHarvest
tag @s[scores={harvest.config=3},tag=harvest.removeTag] remove harvest.crouchHarvest
tag @s[scores={harvest.config=3},tag=harvest.removeTag] remove harvest.removeTag

execute if entity @s[tag=!harvest.standHarvest,tag=!harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: " ", crouching: " "}
execute if entity @s[tag=!harvest.standHarvest,tag=harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: " ", crouching: "✔"}
execute if entity @s[tag=harvest.standHarvest,tag=!harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: "✔", crouching: " "}
execute if entity @s[tag=harvest.standHarvest,tag=harvest.crouchHarvest] run function harvest:macro/tellraw_config {standing: "✔", crouching: "✔"}

scoreboard players reset @s harvest.config