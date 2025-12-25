# appelée par end_trap
# permet de détruire le trap 7

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=7}]
bossbar set trapped_someone:player7 players