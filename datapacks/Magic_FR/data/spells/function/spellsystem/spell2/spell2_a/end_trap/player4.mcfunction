# appelée par end_trap
# permet de détruire le trap 4

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=4}]
bossbar set trapped_someone:player4 players