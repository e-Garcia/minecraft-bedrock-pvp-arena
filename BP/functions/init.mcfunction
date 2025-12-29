scoreboard objectives add pvpInit dummy
scoreboard objectives add pvpDeaths deathCount
scoreboard objectives add pvpLastDeaths dummy
scoreboard objectives add pvpMode dummy
scoreboard objectives add pvpTeam dummy

# PvP state: 1 = in PvP, 0/absent = not
scoreboard objectives add pvpEnabled dummy

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
