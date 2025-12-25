# appelée par ctf:conveyor_belt/clock si quelqu'un a cliqué sur le levier du tapis du milieu pour changer de sens et que le tapis n'a pas encore changé de sens
# fait passer le tapis du bas en state 1 et setup les levier du tapis du milieu en state 1


scoreboard players set bottom_lever_blue conveyor_belt 0
# fait passer le tapis du bas au state 0