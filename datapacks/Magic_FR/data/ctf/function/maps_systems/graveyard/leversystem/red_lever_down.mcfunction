# appelée par ctf:loop modifie les barrières en fer côté rouge lorsque le levier est baissé

clone 193 134 -306 191 135 -310 191 168 -310
clone 183 137 -298 187 138 -300 183 168 -300
clone 193 135 -284 195 134 -288 193 168 -288
clone 183 137 -272 187 138 -274 183 168 -274
# modifie les barrières rouges

clone 193 129 -306 191 129 -310 191 98 -310
clone 195 129 -284 193 129 -288 193 98 -288
clone 183 131 -298 187 131 -300 183 98 -300
clone 183 131 -272 187 131 -274 183 98 -274
# reset le systeme de block violet (pour le tp du mage) sous le portail rouge

execute positioned 193 168 -286 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 191 168 -308 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 185 168 -300 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 185 168 -274 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
scoreboard players set red lever_graveyard 1
# fait passer le levier rouge dans l'état 1