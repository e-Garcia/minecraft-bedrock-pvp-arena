# PvP debug function — run as a player with /function pvp/debug
# Temporarily enable command feedback so the output is visible
gamerule sendCommandFeedback true

# Print BP pack name/version for quick info
tellraw @s {"rawtext":[{"text":"BP: Minecraft Bedrock PvP Arena (BP) v0.1.6"}]}

# List all objectives
scoreboard objectives list

# List all scores for the executor
scoreboard players list @s

# Show specific PvP-related scores for the executor
scoreboard players get @s pvpEnabled
scoreboard players get @s pvpMode
scoreboard players get @s pvpTeam
scoreboard players get @s pvpDeaths
scoreboard players get @s pvpLastDeaths

# Display deaths in the sidebar for live monitoring (optional)
scoreboard objectives setdisplay sidebar pvpDeaths

# Restore feedback off to avoid spam from other functions
gamerule sendCommandFeedback false
