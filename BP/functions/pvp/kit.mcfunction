# Standard PvP kit (FFA baseline)
clear @s
effect @s clear

# Weapons
give @s diamond_sword 1
give @s bow 1
give @s arrow 24
give @s mace 1
give @s wind_charge 64
give @s golden_apple 64
give @s shield 1


# Give a totem only if the player has none in their inventory
#execute unless entity @s[hasitem={item=totem_of_undying}] run give @s totem_of_undying 1

# Equip a totem into the offhand only if it's not already there
#execute unless entity @s[hasitem={slot:slot.weapon.offhand,item:totem_of_undying}] run replaceitem entity @s slot.weapon.offhand 0 totem_of_undying 1

# Armor (diamond, no enchantments)
replaceitem entity @s slot.armor.head 0 diamond_helmet 1
replaceitem entity @s slot.armor.chest 0 diamond_chestplate 1
replaceitem entity @s slot.armor.legs 0 diamond_leggings 1
replaceitem entity @s slot.armor.feet 0 diamond_boots 1

# Effects
effect @s speed 999999 0 true
