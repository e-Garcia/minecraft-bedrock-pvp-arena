# Run init exactly once per world/session
execute unless score "#pvpInit" pvpInit matches 1 run function init
execute unless score "#pvpInit" pvpInit matches 1 run scoreboard players set "#pvpInit" pvpInit 1
