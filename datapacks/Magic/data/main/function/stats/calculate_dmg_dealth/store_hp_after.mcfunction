##appelé par main:stats/calculate_dmg_dealth/store_hp_before 1t après que @s ait subit un dégat à calculer

execute as @e[type=#spellable,scores={last_caster=1..},tag=!took_arrow] run function main:stats/calculate_dmg_dealth/calculate_dmg_taken
execute as @e[type=#spellable,scores={last_caster=1..},tag=took_arrow] run function main:stats/calculate_dmg_dealth/calculate_dmg_taken_arrow
# à terme ici différencier joueur et pas joueur et joueurs allié et non allié pour attribuer des stats différentes (avec type = boss et player -> team = ou team =/=)