# appelée par end_trap
# permet de détruire le trap 12

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=12}]
bossbar set trapped_someone:player12 players