## appelée par gamemode:ctf/secondary_objectives/bossbar/sync_player avec le storage secondaire_objective:temp
# permet de mettre rapidement à jour la valeur et le maximum de la bossbar individuelle de @s

$bossbar set secondary_objective:viewer$(slot) players @s
$bossbar set secondary_objective:viewer$(slot) value $(value)
$bossbar set secondary_objective:viewer$(slot) max $(max)
