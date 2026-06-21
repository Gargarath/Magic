## appelée par test_player
## permet de setup la bossbar de @s

$bossbar set thunderstorm:player5 name {"text":"$(tr_mage_spell2_1_name) :","color":"yellow"}
bossbar set thunderstorm:player5 max 130
bossbar set thunderstorm:player5 value 130
bossbar set thunderstorm:player5 players @s[tag=!no_more_thunder_delayed]