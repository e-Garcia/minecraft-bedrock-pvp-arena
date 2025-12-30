# Detect new death
execute as @a[scores={pvpEnabled=1}] if score @s pvpDeaths > @s pvpLastDeaths run tag @s add pvp_pending_kit

# Mark death as handled
execute as @a[scores={pvpEnabled=1}] if score @s pvpDeaths > @s pvpLastDeaths run scoreboard players operation @s pvpLastDeaths = @s pvpDeaths

# Give kit once player has respawned
execute as @a[tag=pvp_pending_kit] if entity @s[health=1..] run function pvp/kit

# Equip armor one tick later
execute as @a[tag=pvp_pending_kit] if entity @s[health=1..] run function pvp/equip

# Clear pending flag
execute as @a[tag=pvp_pending_kit] if entity @s[health=1..] run tag @s remove pvp_pending_kit
