# Effortless Harvest
 
A small datapack to harvest plants without breaking them

### Features
Right-click fully grown crops &ndash; excluding pepos &ndash; with a Diamond or Netherite Hoe to harvest them
- Crop is replanted
- One seed is removed for compensation
- Respects Fortune enchantment of the hoe

### Core Principles
Ray Cast
- Creates and moves a 'ray' from each player holding a hoe to find a suitable crop
- Creates an Interaction entity at the crop's location

Interaction
- The Interaction checks if the UUID of its creator and the person who clicked it match
- If yes, it will harvest the crop