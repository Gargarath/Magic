# appelée par end_trap
# permet de détruire le trap 8

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=8}]
bossbar set trapped_someone:player8 players