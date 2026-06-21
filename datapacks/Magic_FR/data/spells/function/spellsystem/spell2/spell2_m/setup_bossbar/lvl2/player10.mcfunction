## appelée par test_player
## permet de setup la bossbar de @s

$bossbar set thunderstorm:player10 name {"text":"$(tr_mage_spell2_2_name) :","color":"yellow"}
bossbar set thunderstorm:player10 max 150
bossbar set thunderstorm:player10 value 150
bossbar set thunderstorm:player10 players @s[tag=!no_more_thunder_delayed]