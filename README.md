# Wintermod
A mod that brings winter to the world of Dungeon Siege.

Aim is to convert resources of grass and pine forest environments to snow.\
Focus is on (the beginning of) the Kingdom of Ehb campaign. Utraean Peninsula has less prio, LoA map is not even tested properly. The dry-grass regions were given up on.

Wintermod works by:
- Overriding terrain textures, e.g. grass -> snow, pine/sequoia-forest -> ice-caves. Some textures only had to be copied, others had to be GIMPed.
- Overriding object textures, e.g. grass/generic -> snow. This is the reason why there are snowy barrels etc. also indoors, there's not much that can be done given this approach. It is also the reason why dry-grass regions look inconsistent now, the terrain has a special texture set but the plants are simply mixed grass & swamp templates.
- Overriding object templates, e.g. various grass bushes were re-defined as snow rhododendrons, various deciduous trees as tree_ice_pine or tree_ice_dead.
- Overriding moods, to change rain -> snow, and make the fog color in forests more blue.

This mod is build to work together with my Christmas mod. If you use both mods, Christmas trees will stand in various locations such as the Farmhouse, Stonebridge, Glacern, or around Castle Ehb.

This mod is NOT compatible with SeeFar (mood definition conflict) or Hi-Res Textures (textures conflict). Other mods were not tested.
