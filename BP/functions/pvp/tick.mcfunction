# PvP respawn detector using deathCount delta

# Apply kit once per death (deathCount delta)
execute as @a[scores={pvpEnabled=1}] if score @s pvpDeaths > @s pvpLastDeaths run function pvp/kit

# Update lastDeaths for PvP players
execute as @a[scores={pvpEnabled=1}] run scoreboard players operation @s pvpLastDeaths = @s pvpDeaths
