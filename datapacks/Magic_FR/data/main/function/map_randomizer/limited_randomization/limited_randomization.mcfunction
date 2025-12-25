## appelée par main:round_end/go_to_shop si les options de la partie sont sur aléatoire (pas deux fois la même map activé)
## permet de sélectionner les maps aléatoirement (en empéchant de sélectionner deux fois la même)


execute if score round bossbar matches 0 run function main:map_randomizer/limited_randomization/round1/round1
# si le prochain round est le 1 -> choisi la prochaine map
execute if score round bossbar matches 1 run function main:map_randomizer/limited_randomization/round2/round2
# si le prochain round est le 2 -> choisi la prochaine map
execute if score round bossbar matches 2 run function main:map_randomizer/limited_randomization/round3/round3
# si le prochain round est le 3 -> choisi la prochaine map
execute if score round bossbar matches 3 run function main:map_randomizer/limited_randomization/round4/round4
# si le prochain round est le 4 -> choisi la prochaine map
