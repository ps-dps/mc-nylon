# Nylon
A library to handle 20hz right click detection

## Overview
Using the `food` component introduced in the 1.20.5 snapshots, we can detect right clicks on pretty much any item at a rate of 20 times per second. This way we can not only react to pressing right click but also holding right click.

That is what this library aims to do efficiently while providing a user friendly interface.

## Prepare the item
For nylon to work for your custom item, you need to do the following things.

### 1. Add the item to the `nylon:items` tag
Since it is benefitial in terms of performance, nylon only checks items of certain ids.
For your item to work, just add the base id of the item you are planning to use to the `nylon:items` items tag located at `data/nylon/tags/items/items.json`.

When adding a `poisonous_potato` to it, the tag would look like this:
```json
{ "values": [ "minecraft:poisonous_potato" ]}
```

### 2. Add the `food` component
If you add the `food` component with `0` `nutrition`, `0` `saturation`, `100000` `eat_seconds` and `true` for `can_always_eat` the item won't play an eating animation nor the sound and can always be used to detect right clicks.

> [!Note]
> You will still get slowed while holding down right click, there is currently now way around that limitation.

In a `give`-command it could look like this:
```mcfunction
give @s poisonous_potato[food={nutrition:0,saturation:0,eat_seconds:100000,can_always_eat:true}]
```

In a loot-table or item-modifier it could look like this:
```json
{
    "function": "minecraft:set_components",
    "components": {
        "minecraft:food": {
            "nutrition": 0,
            "saturation": 0,
            "eat_seconds": 100000,
            "can_always_eat": true
}}}
```

### 3. Add `custom_data` for nylon
Add `nylon:1b` as custom data to your item.

In a `give`-command, the component looks like this:
```
give @s poisonous_potato[custom_data={nylon:1b}]
```

In a loot-table or item-modifier it looks like this:
```json
{ "function": "minecraft:set_custom_data", "tag": "{nylon:1b}" }
```

### 4. Register it in tungsten
[Tungsten](https://github.com/PuckiSilver/mc-tungsten) is another library that is included in this one, it is used to efficiently detect what item the player is holding.

To quickly set up tungsten, just apply the modifier `tungsten:apply/<slot>` to the item for the mainhand and/or offhand.

This can either be done using the `item`-command:
```mcfunction
item modify entity @s weapon.mainhand tungsten:apply/mainhand
```

Or as a reference in a loot-table or item-modifier:
```json
{ "function": "minecraft:reference", "name": "tungsten:apply/mainhand" }
```

You can check [tungsten's README](https://github.com/PuckiSilver/mc-tungsten) for more details.

## React to right clicks
If you have [prepared your item](#prepare-the-item) you can add functions that react to right clicks.

Add a function to one- or multiple of the following function tags:
| Function Tag | When it is executed |
| - | - |
| `nylon:begin` | When right click is first pressed |
| `nylon:charge` | Every tick while holding right click |
| `nylon:finish` | The tick after right click is let go |

All the function tags are located at `data/nylon/tags/functions/<begin|charge|finish>.json`.

Inside of the functions you add to these function tags, you have access to the following information:
| Type | Name | Explanation |
| - | - | - |
| Selector | `@s` | The player pressing right click |
| Location | `~ ~ ~` | Location of the player |
| Scoreboard | `@s nylon.charge` | Time in ticks that right click was held |
| Predicate | `nylon:is_mainhand` | If the Item is in the players mainhand |
| Predicate | `nylon:is_offhand` | If the Item is in the players offhand |

## Applying cooldown
You can block nylon's right click detection for a specific amount of time by setting `@s nylon.blocked_until` to the gametime at which the player can first use right click again.

To block the right click detection for 2 seconds (40 ticks), you can run the following commands as the player:
```mcfunction
execute store result score @s nylon.blocked_until run time query gametime
scoreboard players add @s nylon.blocked_until 40
```

---
[![PuckiSilver on GitHub](https://raw.githubusercontent.com/PuckiSilver/static-files/main/link_logos/GitHub.png)](https://github.com/PuckiSilver)[![PuckiSilver on modrinth](https://raw.githubusercontent.com/PuckiSilver/static-files/main/link_logos/modrinth.png)](https://modrinth.com/user/PuckiSilver)[![PuckiSilver on PlanetMinecraft](https://raw.githubusercontent.com/PuckiSilver/static-files/main/link_logos/PlanetMinecraft.png)](https://planetminecraft.com/m/PuckiSilver)[![PuckiSilver on PayPal](https://raw.githubusercontent.com/PuckiSilver/static-files/main/link_logos/PayPal.png)](https://paypal.me/puckisilver)
