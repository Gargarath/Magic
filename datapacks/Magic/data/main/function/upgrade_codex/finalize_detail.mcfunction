# Convertit les nombres en chaînes dans les composants avant leur injection.
$data modify storage temp:codex view.description[2].text set value "$(level)"
$data modify storage temp:codex view.description[4].text set value "$(max_level)"
$data modify storage temp:codex view.description[8].text set value "$(price)"
$data modify storage temp:codex view.description[-1].text set value "$(current)"
function main:upgrade_codex/show_detail with storage temp:codex view
