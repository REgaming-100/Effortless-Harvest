tag @s[scores={harvest.config=2},tag=harvest.standHarvest] add harvest.removeTag
tag @s[scores={harvest.config=2}] add harvest.standHarvest
tag @s[scores={harvest.config=2},tag=harvest.removeTag] remove harvest.standHarvest
tag @s[scores={harvest.config=2},tag=harvest.removeTag] remove harvest.removeTag

tag @s[scores={harvest.config=3},tag=harvest.crouchHarvest] add harvest.removeTag
tag @s[scores={harvest.config=3}] add harvest.crouchHarvest
tag @s[scores={harvest.config=3},tag=harvest.removeTag] remove harvest.crouchHarvest
tag @s[scores={harvest.config=3},tag=harvest.removeTag] remove harvest.removeTag

execute if entity @s[tag=harvest.standHarvest] run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"[✔]"}', Tags: ["harvest.standHarvest"]}
execute if entity @s[tag=!harvest.standHarvest] run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"[ ]"}', Tags: ["harvest.standHarvest"]}
execute if entity @s[tag=harvest.crouchHarvest] run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"[✔]"}', Tags: ["harvest.crouchHarvest"]}
execute if entity @s[tag=!harvest.crouchHarvest] run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"[ ]"}', Tags: ["harvest.crouchHarvest"]}

tellraw @s [{"color":"dark_aqua","text":"----------------\n"},{"color":"white","text":"Harvesting"},{"color":"aqua","text":"\n→ "},{"color":"gray","text":"When standing: "},{"clickEvent":{"action":"run_command","value":"/trigger harvest.config set 2"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle"}]},"selector":"@e[type=area_effect_cloud,tag=harvest.standHarvest]"},{"color":"aqua","text":"\n→ "},{"color":"gray","text":"When crouching: "},{"clickEvent":{"action":"run_command","value":"/trigger harvest.config set 3"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle"}]},"selector":"@e[type=area_effect_cloud,tag=harvest.crouchHarvest]"},{"color":"dark_aqua","text":"\n----------------"}]

scoreboard players reset @a harvest.config