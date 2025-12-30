# Track player deaths (Bedrock built-in)
scoreboard objectives add pvpDeaths deathCount

# Internal tracking
scoreboard objectives add pvpLastDeaths dummy
scoreboard objectives add pvpMode dummy
scoreboard objectives add pvpTeam dummy

# PvP state: 1 = in PvP, 0/absent = not
scoreboard objectives add pvpEnabled dummy

# Reduce command spam
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
