# appelée par main:launch_arena/launch_map_graveyard avec le storage de langue du lobby
# traduit et applique les épitaphes de l'arène cimetière

$execute unless entity @a[scores={Player=1}] run data merge block 233 168 -302 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_1_name)","$(tr_graveyard_epitaph_1_line_3)",""]}}
$execute if entity @a[scores={Player=1}] run data merge block 233 168 -302 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=1}]"},"$(tr_graveyard_epitaph_1_line_3)",""]}}
$execute unless entity @a[scores={Player=2}] run data merge block 187 170 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_2_name)","$(tr_graveyard_epitaph_2_line_3)",""]}}
$execute if entity @a[scores={Player=2}] run data merge block 187 170 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=2}]"},"$(tr_graveyard_epitaph_2_line_3)",""]}}
$execute unless entity @a[scores={Player=3}] run data merge block 238 168 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_3_name)","$(tr_graveyard_epitaph_3_line_3)","$(tr_graveyard_epitaph_3_line_4)"]}}
$execute if entity @a[scores={Player=3}] run data merge block 238 168 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=3}]"},"$(tr_graveyard_epitaph_3_line_3)","$(tr_graveyard_epitaph_3_line_4)"]}}
$execute unless entity @a[scores={Player=4}] run data merge block 194 168 -303 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_4_name)","$(tr_graveyard_epitaph_4_line_3)",""]}}
$execute if entity @a[scores={Player=4}] run data merge block 194 168 -303 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=4}]"},"$(tr_graveyard_epitaph_4_line_3)",""]}}
$execute unless entity @a[scores={Player=5}] run data merge block 254 168 -300 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_5_name)","$(tr_graveyard_epitaph_5_line_3)",""]}}
$execute if entity @a[scores={Player=5}] run data merge block 254 168 -300 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=5}]"},"$(tr_graveyard_epitaph_5_line_3)",""]}}
$execute unless entity @a[scores={Player=6}] run data merge block 182 168 -262 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_6_name)","$(tr_graveyard_epitaph_6_line_3)",""]}}
$execute if entity @a[scores={Player=6}] run data merge block 182 168 -262 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=6}]"},"$(tr_graveyard_epitaph_6_line_3)",""]}}
$execute unless entity @a[scores={Player=7}] run data merge block 254 170 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_7_name)","$(tr_graveyard_epitaph_7_line_3)",""]}}
$execute if entity @a[scores={Player=7}] run data merge block 254 170 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=7}]"},"$(tr_graveyard_epitaph_7_line_3)",""]}}
$execute unless entity @a[scores={Player=8}] run data merge block 182 170 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_8_name)","$(tr_graveyard_epitaph_8_line_3)",""]}}
$execute if entity @a[scores={Player=8}] run data merge block 182 170 -238 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=8}]"},"$(tr_graveyard_epitaph_8_line_3)",""]}}
$execute unless entity @a[scores={Player=9}] run data merge block 249 170 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_9_name)","$(tr_graveyard_epitaph_9_line_3)",""]}}
$execute if entity @a[scores={Player=9}] run data merge block 249 170 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=9}]"},"$(tr_graveyard_epitaph_9_line_3)",""]}}
$execute unless entity @a[scores={Player=10}] run data merge block 203 168 -260 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_10_name)","$(tr_graveyard_epitaph_10_line_3)",""]}}
$execute if entity @a[scores={Player=10}] run data merge block 203 168 -260 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=10}]"},"$(tr_graveyard_epitaph_10_line_3)",""]}}
$execute unless entity @a[scores={Player=11}] run data merge block 198 168 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_11_name)","$(tr_graveyard_epitaph_11_line_3)",""]}}
$execute if entity @a[scores={Player=11}] run data merge block 198 168 -324 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=11}]"},"$(tr_graveyard_epitaph_11_line_3)",""]}}
$execute unless entity @a[scores={Player=12}] run data merge block 242 168 -259 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)","$(tr_graveyard_epitaph_12_name)","$(tr_graveyard_epitaph_12_line_3)",""]}}
$execute if entity @a[scores={Player=12}] run data merge block 242 168 -259 {front_text:{messages:["$(tr_graveyard_epitaph_here_lies)",{"selector":"@a[scores={Player=12}]"},"$(tr_graveyard_epitaph_12_line_3)",""]}}
