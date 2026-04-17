## appelee quand l'historique est plein
# copie un slot storage dans un autre pour decaler l'historique

$data modify storage shop:history player.$(player).states.slot$(to) set from storage shop:history player.$(player).states.slot$(from)
