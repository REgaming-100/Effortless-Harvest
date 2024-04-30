# Effortless Harvest
 
A small datapack to harvest plants without breaking them

## Features
Right-click fully grown crops &ndash; excluding pepos &ndash; with a Diamond or Netherite Hoe to harvest them
- Crop is replanted
- One seed is removed for compensation
- Respects Fortune enchantment of the hoe

> ⚠︎ Due to limitations of the interaction entity, harvesting can happen at a max rate of 5 crops/s if you hold right-click. To harvest faster, you'll need to spam.

## Core Principles
### Ray Cast
- Creates and moves a 'ray' from each player holding a hoe to find a suitable crop
- Creates an interaction entity at the crop's location

### Interaction
- The interaction entity checks if the UUID of its creator and the person who clicked it match
- If they do, the crop will be harvested