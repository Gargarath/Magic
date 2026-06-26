## appelée par test_player
## permet de setup la bossbar de @s

$bossbar set thunderstorm:player2 name {"text":"$(tr_mage_spell2_3_name) :","color":"yellow"}
bossbar set thunderstorm:player2 max 170
bossbar set thunderstorm:player2 value 170
bossbar set thunderstorm:player2 players @s[tag=!no_more_thunder_delayed]