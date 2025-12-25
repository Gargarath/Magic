# appelée par end_trap
# permet de détruire le trap 6

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=6}]
bossbar set trapped_someone:player6 players