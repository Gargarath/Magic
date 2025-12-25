# appelée par ctf:loop modifie les barrières en fer côté rouge lorsque le levier est levé

clone 193 137 -306 191 138 -310 191 168 -310
clone 183 134 -298 187 135 -300 183 168 -300
clone 193 138 -284 195 137 -288 193 168 -288
clone 183 135 -272 187 134 -274 183 168 -274
# modifie les barrières rouges

clone 193 131 -306 191 131 -310 191 98 -310
clone 195 131 -284 193 131 -288 193 98 -288
clone 183 129 -298 187 129 -300 183 98 -300
clone 183 129 -272 187 129 -274 183 98 -274
# reset le systeme de block violet (pour le tp du mage) sous le portail rouge

execute positioned 193 168 -286 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 191 168 -308 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 185 168 -300 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 185 168 -274 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
scoreboard players set red lever_graveyard 0
# fait passer le levier rouge dans l'état 0