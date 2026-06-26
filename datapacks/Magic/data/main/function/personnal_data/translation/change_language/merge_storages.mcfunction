# appelée par change_language selon la langue que @s veut
# modifie le storage avec la bonne traduction pour que @s puisse l'utiliser

$data merge storage personnal_storage.temp {storage:$(translate)}