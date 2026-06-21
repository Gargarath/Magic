## appelée par test_player
## permet de setup la bossbar de @s

$bossbar set thunderstorm:player9 name {"text":"$(tr_mage_spell2_3_name) :","color":"yellow"}
bossbar set thunderstorm:player9 max 170
bossbar set thunderstorm:player9 value 170
bossbar set thunderstorm:player9 players @s[tag=!no_more_thunder_delayed]