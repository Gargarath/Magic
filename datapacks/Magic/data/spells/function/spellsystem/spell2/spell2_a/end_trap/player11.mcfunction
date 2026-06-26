# appelée par end_trap
# permet de détruire le trap 11

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=11}]
bossbar set trapped_someone:player11 players