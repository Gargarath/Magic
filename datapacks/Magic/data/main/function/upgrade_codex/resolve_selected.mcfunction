execute if score @s codex_category matches 1 run function main:upgrade_codex/show_passive

execute if score @s codex_class matches 1 if score @s codex_category matches 2 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"weapon1"}
execute if score @s codex_class matches 1 if score @s codex_category matches 3 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"spell1"}
execute if score @s codex_class matches 1 if score @s codex_category matches 4 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"spell2"}
execute if score @s codex_class matches 1 if score @s codex_category matches 5 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"spell3"}
execute if score @s codex_class matches 1 if score @s codex_category matches 6 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"chest"}
execute if score @s codex_class matches 1 if score @s codex_category matches 7 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"legs"}
execute if score @s codex_class matches 1 if score @s codex_category matches 8 run function main:upgrade_codex/resolve_detail {class:"warrior",category:"boots"}

execute if score @s codex_class matches 2 if score @s codex_category matches 2 run function main:upgrade_codex/resolve_detail {class:"archer",category:"weapon1"}
execute if score @s codex_class matches 2 if score @s codex_category matches 3 run function main:upgrade_codex/resolve_detail {class:"archer",category:"spell1"}
execute if score @s codex_class matches 2 if score @s codex_category matches 4 run function main:upgrade_codex/resolve_detail {class:"archer",category:"spell2"}
execute if score @s codex_class matches 2 if score @s codex_category matches 5 run function main:upgrade_codex/resolve_detail {class:"archer",category:"spell3"}
execute if score @s codex_class matches 2 if score @s codex_category matches 6 run function main:upgrade_codex/resolve_detail {class:"archer",category:"chest"}
execute if score @s codex_class matches 2 if score @s codex_category matches 7 run function main:upgrade_codex/resolve_detail {class:"archer",category:"legs"}
execute if score @s codex_class matches 2 if score @s codex_category matches 8 run function main:upgrade_codex/resolve_detail {class:"archer",category:"boots"}

execute if score @s codex_class matches 3 if score @s codex_category matches 2 run function main:upgrade_codex/resolve_detail {class:"mage",category:"weapon1"}
execute if score @s codex_class matches 3 if score @s codex_category matches 3 run function main:upgrade_codex/resolve_detail {class:"mage",category:"spell1"}
execute if score @s codex_class matches 3 if score @s codex_category matches 4 run function main:upgrade_codex/resolve_detail {class:"mage",category:"spell2"}
execute if score @s codex_class matches 3 if score @s codex_category matches 5 run function main:upgrade_codex/resolve_detail {class:"mage",category:"spell3"}
execute if score @s codex_class matches 3 if score @s codex_category matches 6 run function main:upgrade_codex/resolve_detail {class:"mage",category:"chest"}
execute if score @s codex_class matches 3 if score @s codex_category matches 7 run function main:upgrade_codex/resolve_detail {class:"mage",category:"legs"}
execute if score @s codex_class matches 3 if score @s codex_category matches 8 run function main:upgrade_codex/resolve_detail {class:"mage",category:"boots"}

execute if score @s codex_class matches 4 if score @s codex_category matches 2 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"weapon1"}
execute if score @s codex_class matches 4 if score @s codex_category matches 3 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"spell1"}
execute if score @s codex_class matches 4 if score @s codex_category matches 4 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"spell2"}
execute if score @s codex_class matches 4 if score @s codex_category matches 5 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"spell3"}
execute if score @s codex_class matches 4 if score @s codex_category matches 6 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"chest"}
execute if score @s codex_class matches 4 if score @s codex_category matches 7 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"legs"}
execute if score @s codex_class matches 4 if score @s codex_category matches 8 run function main:upgrade_codex/resolve_detail {class:"rogue",category:"boots"}
