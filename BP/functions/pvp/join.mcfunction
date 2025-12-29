# Enter PvP mode
scoreboard players set @s pvpEnabled 1

# Sync lastDeaths to avoid immediate false trigger
scoreboard players operation @s pvpLastDeaths = @s pvpDeaths

# Apply kit now
function pvp/kit
