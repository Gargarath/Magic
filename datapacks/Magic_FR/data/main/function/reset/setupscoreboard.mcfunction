# permet de setup les scoreboard

# test
scoreboard objectives add test_chest_item dummy

# general
scoreboard objectives add operations dummy
scoreboard objectives add numbers dummy
scoreboard objectives add class_count dummy
scoreboard objectives add class_id dummy
scoreboard objectives add team_side dummy

scoreboard objectives add enable_loop dummy
scoreboard objectives add is_working dummy
scoreboard objectives add variables dummy

scoreboard objectives add Player dummy
scoreboard objectives add playercount dummy
scoreboard objectives add Player_last_game dummy

scoreboard objectives add drop_item dummy

scoreboard objectives add nopack_detection dummy
scoreboard objectives add disconnected dummy

scoreboard objectives add is_jumping minecraft.custom:minecraft.jump

# gui
scoreboard objectives add gui_actionbar_alert dummy



# teams
scoreboard objectives add blue_place dummy
scoreboard objectives add blue_member dummy
scoreboard objectives add red_member dummy
scoreboard objectives add red_place dummy

# secondary objectives
scoreboard objectives add secnd_objective dummy
scoreboard objectives add time_to_obj dummy
scoreboard objectives add point_capture dummy
scoreboard objectives add golem dummy


## LOBBY
scoreboard objectives add InLobby dummy
scoreboard objectives add used_reset dummy
scoreboard objectives add Lobby_ready dummy
scoreboard objectives add hotbar_menu dummy

scoreboard objectives add option_panel dummy

scoreboard objectives add leaderboard dummy
scoreboard objectives add leaderbrd_right trigger
scoreboard objectives add leaderbrd_left trigger
scoreboard objectives add leaderboard_stand_place dummy
scoreboard objectives add leaderboard_stand_class dummy

scoreboard objectives add class_selector_warrior dummy
scoreboard objectives add class_selector_archer dummy
scoreboard objectives add class_selector_mage dummy
scoreboard objectives add class_selector_rogue dummy
# utilisés pour se souvenir à quelle page on est dans la selection des classes

# operator
scoreboard objectives add operator dummy
scoreboard objectives add admin_quit_admin trigger
scoreboard objectives add admin_all_ready trigger
scoreboard objectives add admin_randomize_class trigger
scoreboard objectives add admin_randomize_team trigger
scoreboard objectives add admin_stop_game trigger

# jump
scoreboard objectives add jump_test dummy

# arena
scoreboard objectives add respawn_quality dummy
scoreboard objectives add lobby_sneak dummy

## MAPS
scoreboard objectives add map_memories dummy
scoreboard objectives add map_selection dummy

scoreboard objectives add in_water dummy
scoreboard objectives add steam_timer dummy
scoreboard objectives add mortars dummy
scoreboard objectives add conveyor_belt dummy
# candyworld
scoreboard objectives add is_dead_mounting dummy
scoreboard objectives add gingerbread dummy
scoreboard objectives add living_cherry dummy
# graveyard
scoreboard objectives add in_bad_path dummy
scoreboard objectives add in_lich_aoe1 dummy
scoreboard objectives add timer_lich_aoe1 dummy
scoreboard objectives add lich dummy
scoreboard objectives add lever_graveyard dummy

## CTF
scoreboard objectives add Flag_posed dummy
scoreboard objectives add save_flag_time dummy
scoreboard objectives add flag_wrong_place dummy
scoreboard objectives add Game_result dummy

scoreboard objectives add timer_fireworks dummy
scoreboard objectives add bossbar dummy
# encore utilisé pour le compteur de round

# MATCHMAKING
scoreboard objectives add mm_count dummy
scoreboard objectives add mm_rand dummy
scoreboard objectives add start_error dummy

# hp / health calculation
scoreboard objectives add health health
scoreboard objectives add hp_before10 dummy
scoreboard objectives add hp_after10 dummy
scoreboard objectives add health10 dummy
scoreboard objectives add absorption10 dummy
scoreboard objectives add timer_fix_health dummy


scoreboard objectives add in_fight dummy
scoreboard objectives add out_of_fight dummy
# killfeed
scoreboard objectives add killfeed_died_checked dummy
scoreboard objectives add killed_Player dummy
scoreboard objectives add special_dmg_recieved dummy
scoreboard objectives add spell_caster dummy
scoreboard objectives add last_caster dummy
scoreboard objectives add respawn_time dummy
scoreboard objectives add ppl_dead_in_team dummy
scoreboard objectives add killfeed_died dummy


# respawn
scoreboard objectives add max_respawn_bar dummy
scoreboard objectives add IsAlive deathCount

# timers
scoreboard objectives add timers dummy
scoreboard objectives add timer dummy

# options
scoreboard objectives add opt_display_keybinds dummy
scoreboard objectives add opt_trig_keybind_order trigger
scoreboard objectives add opt_keybind_order dummy

# specs
scoreboard objectives add spec_stop trigger
scoreboard objectives add spec_player1 trigger
scoreboard objectives add spec_player2 trigger
scoreboard objectives add spec_player3 trigger
scoreboard objectives add spec_player4 trigger
scoreboard objectives add spec_player5 trigger
scoreboard objectives add spec_player6 trigger
scoreboard objectives add spec_player7 trigger
scoreboard objectives add spec_player8 trigger
scoreboard objectives add spec_player9 trigger
scoreboard objectives add spec_player10 trigger
scoreboard objectives add spec_player11 trigger
scoreboard objectives add spec_player12 trigger

## STATS
scoreboard objectives add played_last_game dummy
scoreboard objectives add team_last_game dummy
# stats
scoreboard objectives add dmg_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add stat_kd_ratio1 dummy
scoreboard objectives add stat_kd_ratio2 dummy
scoreboard objectives add stat_kd_ratio1000 dummy
scoreboard objectives add stat_kd_num dummy
scoreboard objectives add bow_dmg_tmp10 dummy
scoreboard objectives add stat_usespell dummy
scoreboard objectives add stat_flag_saved dummy
scoreboard objectives add stat_killcount_f dummy
scoreboard objectives add stat_killcount_player dummy
scoreboard objectives add stat_ppl_trapped dummy
scoreboard objectives add stat_bow_dmg_boss10 dummy
scoreboard objectives add stat_boss_item_picked_up dummy
scoreboard objectives add stat_victory dummy
scoreboard objectives add stat_killcount dummy
scoreboard objectives add stat_spell_dmg dummy
scoreboard objectives add stat_bow_kills dummy
scoreboard objectives add stat_hand_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat_kd_temp dummy
scoreboard objectives add stat_flag_cap dummy
scoreboard objectives add stat_bow_dmg_player10 dummy
scoreboard objectives add stat_kd_den dummy
scoreboard objectives add stat_dmg_taken dummy
scoreboard objectives add stat_deathcount deathCount
scoreboard objectives add stat_spell_dmg_b dummy
scoreboard objectives add stat_spell_dmg_f dummy
scoreboard objectives add stat_dmg_taken2 dummy
scoreboard objectives add stat_flag_earned dummy
scoreboard objectives add stat_bow_dmg10 dummy
scoreboard objectives add stat_killcount_boss dummy
scoreboard objectives add stat_dmg_taken_last dummy
scoreboard objectives add stat_total_dmg dummy
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add bow_dmg_counted10 dummy

# sorting
scoreboard objectives add sort_kd_ratio1000 dummy
scoreboard objectives add sort_arena_killcount dummy
scoreboard objectives add sort_killcount dummy
scoreboard objectives add sort_deathcount dummy
scoreboard objectives add sort_total_dmg dummy
scoreboard objectives add sort_bow_dmg10 dummy
scoreboard objectives add sort_dmg_taken dummy
scoreboard objectives add sort_flag_earned dummy

## SPELLS
scoreboard objectives add usespell dummy
scoreboard objectives add weapon1 dummy
scoreboard objectives add spell1 dummy
scoreboard objectives add spell2 dummy
scoreboard objectives add spell3 dummy
scoreboard objectives add cooldownspell1 dummy
scoreboard objectives add cooldownspell2 dummy
scoreboard objectives add cooldownspell3 dummy
scoreboard objectives add arrow_cooldown dummy

scoreboard objectives add give_cd_amount dummy
scoreboard objectives add cooldown1_clock dummy
scoreboard objectives add cooldown2_clock dummy
scoreboard objectives add cooldown3_clock dummy
## GENERAL
scoreboard objectives add chest dummy
scoreboard objectives add legs dummy
scoreboard objectives add boots dummy


# item slots
scoreboard objectives add item_save_error dummy

scoreboard objectives add weapon1_slot_w dummy
scoreboard objectives add weapon1_slot_a dummy
scoreboard objectives add weapon1_slot_m dummy
scoreboard objectives add weapon1_slot_r dummy
scoreboard objectives add weapon_1_slot2 dummy
scoreboard objectives add quit_slot_w dummy
scoreboard objectives add quit_slot_a dummy
scoreboard objectives add quit_slot_m dummy
scoreboard objectives add quit_slot_r dummy
scoreboard objectives add quit_slot2 dummy
scoreboard objectives add spell1_slot_w dummy
scoreboard objectives add spell1_slot_a dummy
scoreboard objectives add spell1_slot_m dummy
scoreboard objectives add spell1_slot_r dummy
scoreboard objectives add spell1_slot2 dummy
scoreboard objectives add spell1_slot2 dummy
scoreboard objectives add spell2_slot_w dummy
scoreboard objectives add spell2_slot_m dummy
scoreboard objectives add spell2_slot_a dummy
scoreboard objectives add spell2_slot_r dummy
scoreboard objectives add spell2_slot2 dummy
scoreboard objectives add spell3_slot_w dummy
scoreboard objectives add spell3_slot_m dummy
scoreboard objectives add spell3_slot_a dummy
scoreboard objectives add spell3_slot_r dummy
scoreboard objectives add spell3_slot2 dummy

scoreboard objectives add key_slot1 dummy
scoreboard objectives add key_slot2 dummy
scoreboard objectives add key_slot3 dummy
scoreboard objectives add arrows_slot2 dummy
scoreboard objectives add temp_key_slot dummy
scoreboard objectives add temp1_key_slot dummy
scoreboard objectives add temp2_key_slot dummy
scoreboard objectives add temp3_key_slot dummy
scoreboard objectives add sort_key_slot dummy


## SHOP
scoreboard objectives add ready_sign trigger
scoreboard objectives add is_ready dummy
scoreboard objectives add InShop dummy
# reset achats
scoreboard objectives add reset_frameroom trigger

scoreboard objectives add arrow_backup dummy
scoreboard objectives add maxarrow_backup dummy
scoreboard objectives add chest_backup dummy
scoreboard objectives add legs_backup dummy
scoreboard objectives add boots_backup dummy
scoreboard objectives add spell1_backup dummy
scoreboard objectives add spell2_backup dummy
scoreboard objectives add spell3_backup dummy
scoreboard objectives add weapon1_max_range_m_backup dummy
scoreboard objectives add PH_backup dummy
scoreboard objectives add weapon1_backup dummy
scoreboard objectives add explo_max_range_a_backup dummy

# shop
scoreboard objectives add PH dummy
scoreboard objectives add ready_sign trigger
## GUERRIER

# spell1
scoreboard objectives add spell1_w_ih_q dummy
scoreboard objectives add spell1_w_hp_before dummy
scoreboard objectives add spell1_w_hp_target dummy
scoreboard objectives add spell1_w_hp_delta dummy
scoreboard objectives add spell1_w_hp_needed dummy
scoreboard objectives add spell1_w_hp_max dummy
scoreboard objectives add spell1_w_hp_now dummy
scoreboard objectives add using_berzerk dummy
# spell2
scoreboard objectives add timer_rally_flag dummy
# spell3
scoreboard objectives add hooked_w dummy
scoreboard objectives add hook_max_range_w dummy
scoreboard objectives add hooked_by_player dummy
scoreboard objectives add is_hooking_w dummy
scoreboard objectives add hook_timer dummy
scoreboard objectives add hook_position dummy
## ARCHER

# arrows
scoreboard objectives add snap_health10 dummy
scoreboard objectives add snap_hp10 dummy
scoreboard objectives add snap_abs10 dummy

scoreboard objectives add arrow_vx dummy
scoreboard objectives add arrow_vy dummy
scoreboard objectives add arrow_vz dummy

scoreboard objectives add arrow_rotation dummy
scoreboard objectives add arrow_counter dummy
scoreboard objectives add MotionData dummy
scoreboard objectives add arrow dummy
scoreboard objectives add temp_arrow dummy
scoreboard objectives add arrow_owner_id dummy
scoreboard objectives add arrow_owner dummy
scoreboard objectives add shotarrow minecraft.used:minecraft.bow
scoreboard objectives add maxarrow dummy
scoreboard objectives add arrow_charge dummy
scoreboard objectives add used_bow dummy

# spell1
scoreboard objectives add hit_by_explo dummy
scoreboard objectives add hit_by_explo_charge dummy
scoreboard objectives add explosive_player_timer dummy
scoreboard objectives add explo_sneak_change dummy
scoreboard objectives add explo_position_a dummy
scoreboard objectives add explo_max_range_a dummy
scoreboard objectives add explosive_arrow_timer dummy
scoreboard objectives add spell1_a_direction dummy
scoreboard objectives add hit_by_explo_direction dummy
# spell2
scoreboard objectives add usespell2_a dummy
scoreboard objectives add trapped dummy
scoreboard objectives add trap_number_a dummy
scoreboard objectives add in_trap_number dummy
scoreboard objectives add trap_tick dummy
scoreboard objectives add timer_trap dummy
scoreboard objectives add trap_launcher dummy
# spell3
scoreboard objectives add freeze dummy

## MAGE
scoreboard objectives add weapon1_mana_m dummy
scoreboard objectives add weapon1_max_range_m dummy
scoreboard objectives add weapon1_range_m dummy

# spell1
scoreboard objectives add bruning_by_player dummy
scoreboard objectives add burning_lvl dummy
scoreboard objectives add burning dummy
# spell2
scoreboard objectives add thunderstrm_time dummy
scoreboard objectives add in_cloud dummy
scoreboard objectives add cloud_timer_m dummy
# spell3
scoreboard objectives add can_tp_m dummy
scoreboard objectives add tp_range dummy
## ASSASSIN
# spell1
scoreboard objectives add using_ambush dummy
scoreboard objectives add is_sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add is_sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add dealdmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dmgtaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add loud_bar dummy
# spell2
scoreboard objectives add backup_number_r dummy

# spell3
scoreboard objectives add smoke_bomb_timer dummy
scoreboard objectives add in_smoke1 dummy
scoreboard objectives add has_smoke_potion dummy