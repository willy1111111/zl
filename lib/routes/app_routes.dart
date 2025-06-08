import '../core/app_export.dart';
import 'package:get/get.dart';

// Deposit Payment Module Imports
import '../presentation/deposit_payment_module/jeetbaji_gaming_home_screen/jeetbaji_gaming_home_screen.dart';
import '../presentation/deposit_payment_module/narad_gaming_hub_home_screen/narad_gaming_hub_home_screen.dart';
import '../presentation/deposit_payment_module/g_cash_deposit_detail_screen/g_cash_deposit_detail_screen.dart';
import '../presentation/deposit_payment_module/g_cash_deposit_rejection_detail_screen/g_cash_deposit_rejection_detail_screen.dart';
import '../presentation/deposit_payment_module/deposit_record_list_screen/deposit_record_list_screen.dart';
import '../presentation/deposit_payment_module/deposit_confirmation_screen/deposit_confirmation_screen.dart';
import '../presentation/deposit_payment_module/wallet_deposit_confirmation_screen/wallet_deposit_confirmation_screen.dart';
import '../presentation/deposit_payment_module/wallet_deposit_screen/wallet_deposit_screen.dart';
import '../presentation/deposit_payment_module/payment_status_screen/payment_status_screen.dart';
import '../presentation/deposit_payment_module/j_bet88_deposit_bonus_screen/j_bet88_deposit_bonus_screen.dart';
import '../presentation/deposit_payment_module/wallet_deposit_amount_screen/wallet_deposit_amount_screen.dart';
import '../presentation/deposit_payment_module/deposit_record_method_filter_screen/deposit_record_method_filter_screen.dart';
import '../presentation/deposit_payment_module/deposit_record_time_filter_screen/deposit_record_time_filter_screen.dart';
import '../presentation/deposit_payment_module/wallet_deposit_payment_screen/wallet_deposit_payment_screen.dart';
import '../presentation/deposit_payment_module/deposit_transaction_confirmation_screen/deposit_transaction_confirmation_screen.dart';
import '../presentation/deposit_payment_module/j_bet88_deposit_promotion_screen/j_bet88_deposit_promotion_screen.dart';
import '../presentation/deposit_payment_module/narad_gaming_casino_home_screen/narad_gaming_casino_home_screen.dart';

import '../presentation/deposit_payment_module/jeetbaji_gaming_home_screen/binding/jeetbaji_gaming_home_binding.dart';
import '../presentation/deposit_payment_module/narad_gaming_hub_home_screen/binding/narad_gaming_hub_home_binding.dart';
import '../presentation/deposit_payment_module/g_cash_deposit_detail_screen/binding/g_cash_deposit_detail_binding.dart';
import '../presentation/deposit_payment_module/g_cash_deposit_rejection_detail_screen/binding/gcash_deposit_rejection_detail_binding.dart';
import '../presentation/deposit_payment_module/deposit_record_list_screen/binding/deposit_record_list_binding.dart';
import '../presentation/deposit_payment_module/deposit_confirmation_screen/binding/deposit_confirmation_binding.dart';
import '../presentation/deposit_payment_module/wallet_deposit_confirmation_screen/binding/wallet_deposit_confirmation_binding.dart';
import '../presentation/deposit_payment_module/wallet_deposit_screen/binding/wallet_deposit_binding.dart';
import '../presentation/deposit_payment_module/payment_status_screen/binding/payment_status_binding.dart';
import '../presentation/deposit_payment_module/j_bet88_deposit_bonus_screen/binding/j_bet88_deposit_bonus_binding.dart';
import '../presentation/deposit_payment_module/wallet_deposit_amount_screen/binding/wallet_deposit_amount_binding.dart';
import '../presentation/deposit_payment_module/deposit_record_method_filter_screen/binding/deposit_record_method_filter_binding.dart';
import '../presentation/deposit_payment_module/deposit_record_time_filter_screen/binding/deposit_record_time_filter_binding.dart';
import '../presentation/deposit_payment_module/wallet_deposit_payment_screen/binding/wallet_deposit_payment_binding.dart';
import '../presentation/deposit_payment_module/deposit_transaction_confirmation_screen/binding/deposit_transaction_confirmation_binding.dart';
import '../presentation/deposit_payment_module/j_bet88_deposit_promotion_screen/binding/j_bet88_deposit_promotion_binding.dart';
import '../presentation/deposit_payment_module/narad_gaming_casino_home_screen/binding/narad_gaming_casino_home_binding.dart';

// Agent Module Screens (from app_3)
import '../presentation/agent_module/referral_rewards_screen/referral_rewards_screen.dart';
import '../presentation/agent_module/invitation_bonus_screen/invitation_bonus_screen.dart';
import '../presentation/agent_module/agent_referral_program_screen/agent_referral_program_screen.dart';
import '../presentation/agent_module/master_agent_dashboard_screen/master_agent_dashboard_screen.dart';
import '../presentation/agent_module/achievement_rewards_screen/achievement_rewards_screen.dart';
import '../presentation/agent_module/agent_income_overview_screen/agent_income_overview_screen.dart' as agent_income;
import '../presentation/agent_module/casino_home_screen/casino_home_screen.dart';
import '../presentation/agent_module/junior_agent_dashboard_screen/junior_agent_dashboard_screen.dart';
import '../presentation/agent_module/intermediate_agent_dashboard_screen/intermediate_agent_dashboard_screen.dart';
import '../presentation/agent_module/max_tier_agent_dashboard_screen/max_tier_agent_dashboard_screen.dart';
import '../presentation/agent_module/senior_agent_dashboard_screen/senior_agent_dashboard_screen.dart';
import '../presentation/agent_module/gaming_hub_screen/gaming_hub_screen.dart';
import '../presentation/agent_module/congratulations_reward_screen/congratulations_reward_screen.dart';
import '../presentation/agent_module/elite_agent_dashboard_screen/elite_agent_dashboard_screen.dart';

// Auth System Module Screens (from app_4)
import '../presentation/auth_system_module/casino_app_promotion_screen/casino_app_promotion_screen.dart';
import '../presentation/auth_system_module/system_maintenance_screen/system_maintenance_screen.dart';
import '../presentation/auth_system_module/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/auth_system_module/agent_dashboard_screen/agent_dashboard_screen.dart';
import '../presentation/auth_system_module/app_download_promotion_screen/app_download_promotion_screen.dart';
import '../presentation/auth_system_module/content_modal_screen/content_modal_screen.dart';
import '../presentation/auth_system_module/achievement_rewards_screen/achievement_rewards_screen.dart' as auth_achievement;
import '../presentation/auth_system_module/system_maintenance_screen_two_screen/system_maintenance_screen_two_screen.dart';
import '../presentation/auth_system_module/system_maintenance_screen_three_screen/system_maintenance_screen_three_screen.dart';
import '../presentation/auth_system_module/forgot_password_screen_two_screen/forgot_password_screen_two_screen.dart';
import '../presentation/auth_system_module/agent_referral_program_screen/agent_referral_program_screen.dart' as auth_referral;
import '../presentation/auth_system_module/achievement_dashboard_screen/achievement_dashboard_screen.dart';
import '../presentation/auth_system_module/card_matka_game_screen/card_matka_game_screen.dart';
import '../presentation/auth_system_module/login_session_expired_screen/login_session_expired_screen.dart';
import '../presentation/auth_system_module/agent_invite_dashboard_screen/agent_invite_dashboard_screen.dart';
import '../presentation/auth_system_module/j_bet_agent_dashboard_screen/j_bet_agent_dashboard_screen.dart';
import '../presentation/auth_system_module/system_maintenance_screen_four_screen/system_maintenance_screen_four_screen.dart';
import '../presentation/auth_system_module/ticket_records_network_error_screen/ticket_records_network_error_screen.dart';

// VIP Rewards Module Screens (from app_5)
import '../presentation/vip_rewards_module/vip_rank_icons_gallery_screen/vip_rank_icons_gallery_screen.dart';
import '../presentation/vip_rewards_module/vip_rewards_and_benefits_screen/vip_rewards_and_benefits_screen.dart';
import '../presentation/vip_rewards_module/vip_cashback_dashboard_screen/vip_cashback_dashboard_screen.dart';
import '../presentation/vip_rewards_module/vip_rewards_dashboard_screen/vip_rewards_dashboard_screen.dart';
import '../presentation/vip_rewards_module/vip_upgrade_requirements_screen/vip_upgrade_requirements_screen.dart';
import '../presentation/vip_rewards_module/vip_rewards_benefits_screen/vip_rewards_benefits_screen.dart';
import '../presentation/vip_rewards_module/jbet88_vip_rewards_dashboard_screen/jbet88_vip_rewards_dashboard_screen.dart';
import '../presentation/vip_rewards_module/vip_weekly_rewards_dashboard_screen/vip_weekly_rewards_dashboard_screen.dart';
import '../presentation/vip_rewards_module/vip_monthly_salary_details_screen/vip_monthly_salary_details_screen.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_rewards_screen/vip_daily_salary_rewards_screen.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_dashboard_screen/vip_daily_salary_dashboard_screen.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_claimed_screen/vip_daily_salary_claimed_screen.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_details_screen/vip_weekly_salary_details_screen.dart';
import '../presentation/vip_rewards_module/jbet88_vip_upgrade_bonus_screen/jbet88_vip_upgrade_bonus_screen.dart';
import '../presentation/vip_rewards_module/vip_cashback_eligible_screen/vip_cashback_eligible_screen.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_submitted_screen/vip_weekly_salary_submitted_screen.dart';
import '../presentation/vip_rewards_module/vip_monthly_salary_benefits_screen/vip_monthly_salary_benefits_screen.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_pending_screen/vip_weekly_salary_pending_screen.dart';

// Financial Analytics Module Screens (from app_7)
import '../presentation/financial_analytics_module/phone_verification_screen/phone_verification_screen.dart';
import '../presentation/financial_analytics_module/social_share_screen/social_share_screen.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_two_screen/phone_verification_screen_two_screen.dart';
import '../presentation/financial_analytics_module/jackpot_history_screen/jackpot_history_screen.dart';
import '../presentation/financial_analytics_module/rewards_screen/rewards_screen.dart';
import '../presentation/financial_analytics_module/teams_dashboard_screen/teams_dashboard_screen.dart';
import '../presentation/financial_analytics_module/agent_jackpot_history_screen/agent_jackpot_history_screen.dart';
import '../presentation/financial_analytics_module/income_analytics_dashboard_screen/income_analytics_dashboard_screen.dart';
import '../presentation/financial_analytics_module/rewards_congratulations_screen/rewards_congratulations_screen.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_three_screen/phone_verification_screen_three_screen.dart';
import '../presentation/financial_analytics_module/team_hierarchy_modal_screen/team_hierarchy_modal_screen.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen/income_dashboard_screen.dart';
import '../presentation/financial_analytics_module/agent_jackpot_history_screen_two_screen/agent_jackpot_history_screen_two_screen.dart';
import '../presentation/financial_analytics_module/gift_code_exchange_screen/gift_code_exchange_screen.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_four_screen/phone_verification_screen_four_screen.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen_two_screen/income_dashboard_screen_two_screen.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen_three_screen/income_dashboard_screen_three_screen.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_five_screen/phone_verification_screen_five_screen.dart';

// Bonus Rewards Module Screens (from app_8)
import '../presentation/bonus_rewards_module/app_download_screen/app_download_screen.dart';
import '../presentation/bonus_rewards_module/achievement_bonus_screen/achievement_bonus_screen.dart';
import '../presentation/bonus_rewards_module/registration_bonus_screen/registration_bonus_screen.dart';
import '../presentation/bonus_rewards_module/sign_in_rewards_screen/sign_in_rewards_screen.dart';
import '../presentation/bonus_rewards_module/casino_gaming_hub_screen/casino_gaming_hub_screen.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_makeup_screen/continuous_sign_in_makeup_screen.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_screen/continuous_sign_in_screen.dart';
import '../presentation/bonus_rewards_module/agent_level_system_screen/agent_level_system_screen.dart';
import '../presentation/bonus_rewards_module/agent_income_modal_screen/agent_income_modal_screen.dart';
import '../presentation/bonus_rewards_module/gaming_home_screen/gaming_home_screen.dart';
import '../presentation/bonus_rewards_module/qualified_bonus_screen/qualified_bonus_screen.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_activity_screen/continuous_sign_in_activity_screen.dart';
import '../presentation/bonus_rewards_module/bonus_dashboard_screen/bonus_dashboard_screen.dart';
import '../presentation/bonus_rewards_module/betting_bonus_screen/betting_bonus_screen.dart';
import '../presentation/bonus_rewards_module/gaming_app_download_screen/gaming_app_download_screen.dart';
import '../presentation/bonus_rewards_module/signed_in_rewards_screen/signed_in_rewards_screen.dart';
import '../presentation/bonus_rewards_module/jet_bet_casino_screen/jet_bet_casino_screen.dart';
import '../presentation/bonus_rewards_module/deposit_bonus_history_screen/deposit_bonus_history_screen.dart';

// Shared Screens
import '../presentation/shared/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/splash_screen/splash_screen/splash_screen.dart';

// Bindings
import '../presentation/agent_module/referral_rewards_screen/binding/referral_rewards_binding.dart';
import '../presentation/agent_module/invitation_bonus_screen/binding/invitation_bonus_binding.dart';
import '../presentation/agent_module/agent_referral_program_screen/binding/agent_referral_program_binding.dart';
import '../presentation/agent_module/master_agent_dashboard_screen/binding/master_agent_dashboard_binding.dart';
import '../presentation/agent_module/achievement_rewards_screen/binding/achievement_rewards_binding.dart';
import '../presentation/agent_module/agent_income_overview_screen/binding/agent_income_overview_binding.dart';
import '../presentation/agent_module/casino_home_screen/binding/casino_home_binding.dart';
import '../presentation/agent_module/junior_agent_dashboard_screen/binding/junior_agent_dashboard_binding.dart';
import '../presentation/agent_module/intermediate_agent_dashboard_screen/binding/intermediate_agent_dashboard_binding.dart';
import '../presentation/agent_module/max_tier_agent_dashboard_screen/binding/max_tier_agent_dashboard_binding.dart';
import '../presentation/agent_module/senior_agent_dashboard_screen/binding/senior_agent_dashboard_binding.dart';
import '../presentation/agent_module/gaming_hub_screen/binding/gaming_hub_binding.dart';
import '../presentation/agent_module/congratulations_reward_screen/binding/congratulations_reward_binding.dart';
import '../presentation/agent_module/elite_agent_dashboard_screen/binding/elite_agent_dashboard_binding.dart';

import '../presentation/auth_system_module/casino_app_promotion_screen/binding/casino_app_promotion_binding.dart';
import '../presentation/auth_system_module/system_maintenance_screen/binding/system_maintenance_binding.dart';
import '../presentation/auth_system_module/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/auth_system_module/agent_dashboard_screen/binding/agent_dashboard_binding.dart';
import '../presentation/auth_system_module/app_download_promotion_screen/binding/app_download_promotion_binding.dart';
import '../presentation/auth_system_module/content_modal_screen/binding/content_modal_binding.dart';
import '../presentation/auth_system_module/achievement_rewards_screen/binding/achievement_rewards_binding.dart' as auth_achievement_binding;
import '../presentation/auth_system_module/system_maintenance_screen_two_screen/binding/system_maintenance_screen_two_binding.dart';
import '../presentation/auth_system_module/system_maintenance_screen_three_screen/binding/system_maintenance_screen_three_binding.dart';
import '../presentation/auth_system_module/forgot_password_screen_two_screen/binding/forgot_password_screen_two_binding.dart';
import '../presentation/auth_system_module/agent_referral_program_screen/binding/agent_referral_program_binding.dart' as auth_referral_binding;
import '../presentation/auth_system_module/achievement_dashboard_screen/binding/achievement_dashboard_binding.dart';
import '../presentation/auth_system_module/card_matka_game_screen/binding/card_matka_game_binding.dart';
import '../presentation/auth_system_module/login_session_expired_screen/binding/login_session_expired_binding.dart';
import '../presentation/auth_system_module/agent_invite_dashboard_screen/binding/agent_invite_dashboard_binding.dart';
import '../presentation/auth_system_module/j_bet_agent_dashboard_screen/binding/j_bet_agent_dashboard_binding.dart';
import '../presentation/auth_system_module/system_maintenance_screen_four_screen/binding/system_maintenance_screen_four_binding.dart';
import '../presentation/auth_system_module/ticket_records_network_error_screen/binding/ticket_records_network_error_binding.dart';

import '../presentation/vip_rewards_module/vip_rank_icons_gallery_screen/binding/vip_rank_icons_gallery_binding.dart';
import '../presentation/vip_rewards_module/vip_rewards_and_benefits_screen/binding/vip_rewards_and_benefits_binding.dart';
import '../presentation/vip_rewards_module/vip_cashback_dashboard_screen/binding/vip_cashback_dashboard_binding.dart';
import '../presentation/vip_rewards_module/vip_rewards_dashboard_screen/binding/vip_rewards_dashboard_binding.dart';
import '../presentation/vip_rewards_module/vip_upgrade_requirements_screen/binding/vip_upgrade_requirements_binding.dart';
import '../presentation/vip_rewards_module/vip_rewards_benefits_screen/binding/vip_rewards_benefits_binding.dart';
import '../presentation/vip_rewards_module/jbet88_vip_rewards_dashboard_screen/binding/jbet88_vip_rewards_dashboard_binding.dart';
import '../presentation/vip_rewards_module/vip_weekly_rewards_dashboard_screen/binding/vip_weekly_rewards_dashboard_binding.dart';
import '../presentation/vip_rewards_module/vip_monthly_salary_details_screen/binding/vip_monthly_salary_details_binding.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_rewards_screen/binding/vip_daily_salary_rewards_binding.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_dashboard_screen/binding/vip_daily_salary_dashboard_binding.dart';
import '../presentation/vip_rewards_module/vip_daily_salary_claimed_screen/binding/vip_daily_salary_claimed_binding.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_details_screen/binding/vip_weekly_salary_details_binding.dart';
import '../presentation/vip_rewards_module/jbet88_vip_upgrade_bonus_screen/binding/jbet88_vip_upgrade_bonus_binding.dart';
import '../presentation/vip_rewards_module/vip_cashback_eligible_screen/binding/vip_cashback_eligible_binding.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_submitted_screen/binding/vip_weekly_salary_submitted_binding.dart';
import '../presentation/vip_rewards_module/vip_monthly_salary_benefits_screen/binding/vip_monthly_salary_benefits_binding.dart';
import '../presentation/vip_rewards_module/vip_weekly_salary_pending_screen/binding/vip_weekly_salary_pending_binding.dart';

// Financial Analytics Module Bindings
import '../presentation/financial_analytics_module/phone_verification_screen/binding/phone_verification_binding.dart';
import '../presentation/financial_analytics_module/social_share_screen/binding/social_share_binding.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_two_screen/binding/phone_verification_screen_two_binding.dart';
import '../presentation/financial_analytics_module/jackpot_history_screen/binding/jackpot_history_binding.dart';
import '../presentation/financial_analytics_module/rewards_screen/binding/rewards_binding.dart';
import '../presentation/financial_analytics_module/teams_dashboard_screen/binding/teams_dashboard_binding.dart';
import '../presentation/financial_analytics_module/agent_jackpot_history_screen/binding/agent_jackpot_history_binding.dart';

// Gaming Withdrawal Module Imports (from app_13)
import '../presentation/gaming_withdrawal_module/spin_game_victory_screen/spin_game_victory_screen.dart';
import '../presentation/gaming_withdrawal_module/withdrawal_success_screen/withdrawal_success_screen.dart';
import '../presentation/gaming_withdrawal_module/jetbet_gaming_hub_screen/jetbet_gaming_hub_screen.dart';
import '../presentation/gaming_withdrawal_module/narad_gaming_hub_home_screen/narad_gaming_hub_home_screen.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_home_screen/narad_casino_home_screen.dart';
import '../presentation/gaming_withdrawal_module/spin_game_cash_withdrawal_screen/spin_game_cash_withdrawal_screen.dart';
import '../presentation/gaming_withdrawal_module/spin_wheel_victory_screen/spin_wheel_victory_screen.dart';
import '../presentation/gaming_withdrawal_module/notice_notifications_screen/notice_notifications_screen.dart';
import '../presentation/gaming_withdrawal_module/withdrawal_help_screen/withdrawal_help_screen.dart';
import '../presentation/gaming_withdrawal_module/casino_spin_win_celebration_screen/casino_spin_win_celebration_screen.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_game_hub_screen/narad_casino_game_hub_screen.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_gaming_platform_screen/narad_casino_gaming_platform_screen.dart';
import '../presentation/gaming_withdrawal_module/lucky_bonus_withdrawal_screen/lucky_bonus_withdrawal_screen.dart';
import '../presentation/gaming_withdrawal_module/spin_game_reward_victory_screen/spin_game_reward_victory_screen.dart';
import '../presentation/gaming_withdrawal_module/gaming_withdrawal_confirmation_screen/gaming_withdrawal_confirmation_screen.dart';
import '../presentation/gaming_withdrawal_module/referral_bonus_dialog_screen/referral_bonus_dialog_screen.dart';
import '../presentation/gaming_withdrawal_module/narad_gaming_platform_home_screen/narad_gaming_platform_home_screen.dart';
import '../presentation/gaming_withdrawal_module/notice_empty_state_screen/notice_empty_state_screen.dart';

import '../presentation/gaming_withdrawal_module/spin_game_victory_screen/binding/spin_game_victory_binding.dart';
import '../presentation/gaming_withdrawal_module/withdrawal_success_screen/binding/withdrawal_success_binding.dart';
import '../presentation/gaming_withdrawal_module/jetbet_gaming_hub_screen/binding/jetbet_gaming_hub_binding.dart';
import '../presentation/gaming_withdrawal_module/narad_gaming_hub_home_screen/binding/narad_gaming_hub_home_binding.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_home_screen/binding/narad_casino_home_binding.dart';
import '../presentation/gaming_withdrawal_module/spin_game_cash_withdrawal_screen/binding/spin_game_cash_withdrawal_binding.dart';
import '../presentation/gaming_withdrawal_module/spin_wheel_victory_screen/binding/spin_wheel_victory_binding.dart';
import '../presentation/gaming_withdrawal_module/notice_notifications_screen/binding/notice_notifications_binding.dart';
import '../presentation/gaming_withdrawal_module/withdrawal_help_screen/binding/withdrawal_help_binding.dart';
import '../presentation/gaming_withdrawal_module/casino_spin_win_celebration_screen/binding/casino_spin_win_celebration_binding.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_game_hub_screen/binding/narad_casino_game_hub_binding.dart';
import '../presentation/gaming_withdrawal_module/narad_casino_gaming_platform_screen/binding/narad_casino_gaming_platform_binding.dart';
import '../presentation/gaming_withdrawal_module/lucky_bonus_withdrawal_screen/binding/lucky_bonus_withdrawal_binding.dart';
import '../presentation/gaming_withdrawal_module/spin_game_reward_victory_screen/binding/spin_game_reward_victory_binding.dart';
import '../presentation/gaming_withdrawal_module/gaming_withdrawal_confirmation_screen/binding/gaming_withdrawal_confirmation_binding.dart';
import '../presentation/gaming_withdrawal_module/referral_bonus_dialog_screen/binding/referral_bonus_dialog_binding.dart';
import '../presentation/gaming_withdrawal_module/narad_gaming_platform_home_screen/binding/narad_gaming_platform_home_binding.dart';

// Wallet Crypto Module imports
import '../presentation/wallet_crypto_module/lucky_spin_wheel_game_screen/lucky_spin_wheel_game_screen.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_withdrawal_screen/crypto_wallet_withdrawal_screen.dart';
import '../presentation/wallet_crypto_module/wallet_withdrawal_type_selection_screen/wallet_withdrawal_type_selection_screen.dart';
import '../presentation/wallet_crypto_module/bank_account_settings_screen/bank_account_settings_screen.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_withdrawal_detail_screen/crypto_wallet_withdrawal_detail_screen.dart';
import '../presentation/wallet_crypto_module/usdt_withdrawal_screen/usdt_withdrawal_screen.dart';
import '../presentation/wallet_crypto_module/gaming_app_share_screen/gaming_app_share_screen.dart';
import '../presentation/wallet_crypto_module/jbet88_referral_bonus_screen/jbet88_referral_bonus_screen.dart';
import '../presentation/wallet_crypto_module/usdt_withdrawal_form_screen/usdt_withdrawal_form_screen.dart';
import '../presentation/wallet_crypto_module/spin_game_phone_verification_screen/spin_game_phone_verification_screen.dart';
import '../presentation/wallet_crypto_module/wallet_deposit_type_selection_screen/wallet_deposit_type_selection_screen.dart';
import '../presentation/wallet_crypto_module/spin_game_withdrawal_screen/spin_game_withdrawal_screen.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_password_setup_screen/crypto_wallet_password_setup_screen.dart';
import '../presentation/wallet_crypto_module/wallet_bank_accounts_withdrawal_screen/wallet_bank_accounts_withdrawal_screen.dart';
import '../presentation/wallet_crypto_module/jbet88_referral_rewards_screen/jbet88_referral_rewards_screen.dart';
import '../presentation/wallet_crypto_module/jbet88_benefits_promotion_screen/jbet88_benefits_promotion_screen.dart';
import '../presentation/wallet_crypto_module/text_safe_zone_display_screen/text_safe_zone_display_screen.dart';
import '../presentation/wallet_crypto_module/electronic_wallet_withdrawal_screen/electronic_wallet_withdrawal_screen.dart';

import '../presentation/wallet_crypto_module/lucky_spin_wheel_game_screen/binding/lucky_spin_wheel_game_binding.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_withdrawal_screen/binding/crypto_wallet_withdrawal_binding.dart';
import '../presentation/wallet_crypto_module/wallet_withdrawal_type_selection_screen/binding/wallet_withdrawal_type_selection_binding.dart';
import '../presentation/wallet_crypto_module/bank_account_settings_screen/binding/bank_account_settings_binding.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_withdrawal_detail_screen/binding/crypto_wallet_withdrawal_detail_binding.dart';
import '../presentation/wallet_crypto_module/usdt_withdrawal_screen/binding/usdt_withdrawal_binding.dart';
import '../presentation/wallet_crypto_module/gaming_app_share_screen/binding/gaming_app_share_binding.dart';
import '../presentation/wallet_crypto_module/jbet88_referral_bonus_screen/binding/jbet88_referral_bonus_binding.dart';
import '../presentation/wallet_crypto_module/usdt_withdrawal_form_screen/binding/usdt_withdrawal_form_binding.dart';
import '../presentation/wallet_crypto_module/spin_game_phone_verification_screen/binding/spin_game_phone_verification_binding.dart';
import '../presentation/wallet_crypto_module/wallet_deposit_type_selection_screen/binding/wallet_deposit_type_selection_binding.dart';
import '../presentation/wallet_crypto_module/spin_game_withdrawal_screen/binding/spin_game_withdrawal_binding.dart';
import '../presentation/wallet_crypto_module/crypto_wallet_password_setup_screen/binding/crypto_wallet_password_setup_binding.dart';
import '../presentation/wallet_crypto_module/wallet_bank_accounts_withdrawal_screen/binding/wallet_bank_accounts_withdrawal_binding.dart';
import '../presentation/wallet_crypto_module/jbet88_referral_rewards_screen/binding/jbet88_referral_rewards_binding.dart';
import '../presentation/wallet_crypto_module/jbet88_benefits_promotion_screen/binding/jbet88_benefits_promotion_binding.dart';
import '../presentation/wallet_crypto_module/text_safe_zone_display_screen/binding/text_safe_zone_display_binding.dart';
import '../presentation/wallet_crypto_module/electronic_wallet_withdrawal_screen/binding/electronic_wallet_withdrawal_binding.dart';
import '../presentation/gaming_withdrawal_module/notice_empty_state_screen/binding/notice_empty_state_binding.dart';

// Gaming Casino Module Imports
import '../presentation/gaming_casino_module/casino_game_detail_modal_screen/casino_game_detail_modal_screen.dart';
import '../presentation/gaming_casino_module/betting_rewards_description_modal_screen/betting_rewards_description_modal_screen.dart';
import '../presentation/gaming_casino_module/agent_ranking_bonus_rules_screen/agent_ranking_bonus_rules_screen.dart';
import '../presentation/gaming_casino_module/gaming_bonus_rewards_screen/gaming_bonus_rewards_screen.dart';
import '../presentation/gaming_casino_module/jetso_casino_home_screen/jetso_casino_home_screen.dart';
import '../presentation/gaming_casino_module/current_ranking_leaderboard_screen/current_ranking_leaderboard_screen.dart';
import '../presentation/gaming_casino_module/bet88_agent_jackpot_ranking_screen/bet88_agent_jackpot_ranking_screen.dart';
import '../presentation/gaming_casino_module/vip_daily_salary_dashboard_screen/vip_daily_salary_dashboard_screen.dart';
import '../presentation/gaming_casino_module/jet_br_gaming_promotions_screen/jet_br_gaming_promotions_screen.dart';
import '../presentation/gaming_casino_module/bet88_agent_jackpot_ranking_screen_two_screen/bet88_agent_jackpot_ranking_screen_two_screen.dart';
import '../presentation/gaming_casino_module/agent_jackpot_history_ranking_screen/agent_jackpot_history_ranking_screen.dart';
import '../presentation/gaming_casino_module/jbet88_user_dashboard_screen/jbet88_user_dashboard_screen.dart';
import '../presentation/gaming_casino_module/current_ranking_leaderboard_screen_two_screen/current_ranking_leaderboard_screen_two_screen.dart';
import '../presentation/gaming_casino_module/jet_bet_gaming_hub_screen/jet_bet_gaming_hub_screen.dart';
import '../presentation/gaming_casino_module/provedor_de_jogos_bonus_screen/provedor_de_jogos_bonus_screen.dart';
import '../presentation/gaming_casino_module/betbo_rewards_screen/betbo_rewards_screen.dart';
import '../presentation/gaming_casino_module/betbo_rewards_screen_two_screen/betbo_rewards_screen_two_screen.dart';
import '../presentation/gaming_casino_module/narad_gaming_dashboard_screen/narad_gaming_dashboard_screen.dart';

import '../presentation/gaming_casino_module/casino_game_detail_modal_screen/binding/casino_game_detail_modal_binding.dart';
import '../presentation/gaming_casino_module/betting_rewards_description_modal_screen/binding/betting_rewards_description_modal_binding.dart';
import '../presentation/gaming_casino_module/agent_ranking_bonus_rules_screen/binding/agent_ranking_bonus_rules_binding.dart';
import '../presentation/gaming_casino_module/gaming_bonus_rewards_screen/binding/gaming_bonus_rewards_binding.dart';
import '../presentation/gaming_casino_module/jetso_casino_home_screen/binding/jetso_casino_home_binding.dart';
import '../presentation/gaming_casino_module/current_ranking_leaderboard_screen/binding/current_ranking_leaderboard_binding.dart';
import '../presentation/gaming_casino_module/bet88_agent_jackpot_ranking_screen/binding/bet88_agent_jackpot_ranking_binding.dart';
import '../presentation/gaming_casino_module/vip_daily_salary_dashboard_screen/binding/vip_daily_salary_dashboard_binding.dart';
import '../presentation/gaming_casino_module/jet_br_gaming_promotions_screen/binding/jet_br_gaming_promotions_binding.dart';
import '../presentation/gaming_casino_module/bet88_agent_jackpot_ranking_screen_two_screen/binding/bet88_agent_jackpot_ranking_screen_two_binding.dart';
import '../presentation/gaming_casino_module/agent_jackpot_history_ranking_screen/binding/agent_jackpot_history_ranking_binding.dart';
import '../presentation/gaming_casino_module/jbet88_user_dashboard_screen/binding/jbet88_user_dashboard_binding.dart';
import '../presentation/gaming_casino_module/current_ranking_leaderboard_screen_two_screen/binding/current_ranking_leaderboard_screen_two_binding.dart';
import '../presentation/gaming_casino_module/jet_bet_gaming_hub_screen/binding/jet_bet_gaming_hub_binding.dart';
import '../presentation/gaming_casino_module/provedor_de_jogos_bonus_screen/binding/provedor_de_jogos_bonus_binding.dart';
import '../presentation/gaming_casino_module/betbo_rewards_screen/binding/betbo_rewards_binding.dart';
import '../presentation/gaming_casino_module/betbo_rewards_screen_two_screen/binding/betbo_rewards_screen_two_binding.dart';
import '../presentation/gaming_casino_module/narad_gaming_dashboard_screen/binding/narad_gaming_dashboard_binding.dart';
import '../presentation/financial_analytics_module/income_analytics_dashboard_screen/binding/income_analytics_dashboard_binding.dart';
import '../presentation/financial_analytics_module/rewards_congratulations_screen/binding/rewards_congratulations_binding.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_three_screen/binding/phone_verification_screen_three_binding.dart';
import '../presentation/financial_analytics_module/team_hierarchy_modal_screen/binding/team_hierarchy_modal_binding.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen/binding/income_dashboard_binding.dart';
import '../presentation/financial_analytics_module/agent_jackpot_history_screen_two_screen/binding/agent_jackpot_history_screen_two_binding.dart';
import '../presentation/financial_analytics_module/gift_code_exchange_screen/binding/gift_code_exchange_binding.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_four_screen/binding/phone_verification_screen_four_binding.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen_two_screen/binding/income_dashboard_screen_two_binding.dart';
import '../presentation/financial_analytics_module/income_dashboard_screen_three_screen/binding/income_dashboard_screen_three_binding.dart';
import '../presentation/financial_analytics_module/phone_verification_screen_five_screen/binding/phone_verification_screen_five_binding.dart';

// Bonus Rewards Module Bindings (from app_8)
import '../presentation/bonus_rewards_module/app_download_screen/binding/app_download_binding.dart';
import '../presentation/bonus_rewards_module/achievement_bonus_screen/binding/achievement_bonus_binding.dart';
import '../presentation/bonus_rewards_module/registration_bonus_screen/binding/registration_bonus_binding.dart';
import '../presentation/bonus_rewards_module/sign_in_rewards_screen/binding/sign_in_rewards_binding.dart';
import '../presentation/bonus_rewards_module/casino_gaming_hub_screen/binding/casino_gaming_hub_binding.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_makeup_screen/binding/continuous_sign_in_makeup_binding.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_screen/binding/continuous_sign_in_binding.dart';
import '../presentation/bonus_rewards_module/agent_level_system_screen/binding/agent_level_system_binding.dart';
import '../presentation/bonus_rewards_module/agent_income_modal_screen/binding/agent_income_modal_binding.dart';
import '../presentation/bonus_rewards_module/gaming_home_screen/binding/gaming_home_binding.dart';
import '../presentation/bonus_rewards_module/qualified_bonus_screen/binding/qualified_bonus_binding.dart';
import '../presentation/bonus_rewards_module/continuous_sign_in_activity_screen/binding/continuous_sign_in_activity_binding.dart';
import '../presentation/bonus_rewards_module/bonus_dashboard_screen/binding/bonus_dashboard_binding.dart';
import '../presentation/bonus_rewards_module/betting_bonus_screen/binding/betting_bonus_binding.dart';
import '../presentation/bonus_rewards_module/gaming_app_download_screen/binding/gaming_app_download_binding.dart';
import '../presentation/bonus_rewards_module/signed_in_rewards_screen/binding/signed_in_rewards_binding.dart';
import '../presentation/bonus_rewards_module/jet_bet_casino_screen/binding/jet_bet_casino_binding.dart';
import '../presentation/bonus_rewards_module/deposit_bonus_history_screen/binding/deposit_bonus_history_binding.dart';
import '../presentation/bonus_rewards_module/app_navigation_screen/binding/app_navigation_binding.dart' as bonus_nav;

// Casino Sign-in Module Screens (from app_9)
import '../presentation/casino_sign_in_module/daily_sign_in_rewards_screen/daily_sign_in_rewards_screen.dart';
import '../presentation/casino_sign_in_module/phone_verification_screen/phone_verification_screen.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen/j_bet88_registration_screen.dart';
import '../presentation/casino_sign_in_module/game_reward_claim_screen/game_reward_claim_screen.dart';
import '../presentation/casino_sign_in_module/sign_in_re_sign_screen/sign_in_re_sign_screen.dart';
import '../presentation/casino_sign_in_module/j_bet88_login_screen/j_bet88_login_screen.dart';
import '../presentation/casino_sign_in_module/fourth_day_sign_in_screen/fourth_day_sign_in_screen.dart';
import '../presentation/casino_sign_in_module/registration_success_screen/registration_success_screen.dart';
import '../presentation/casino_sign_in_module/user_agreement_screen/user_agreement_screen.dart';
import '../presentation/casino_sign_in_module/congratulations_bonus_screen/congratulations_bonus_screen.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen_two_screen/j_bet88_registration_screen_two_screen.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen_three_screen/j_bet88_registration_screen_three_screen.dart';
import '../presentation/casino_sign_in_module/money_rain_event_screen/money_rain_event_screen.dart';
import '../presentation/casino_sign_in_module/free_sign_in_rewards_screen/free_sign_in_rewards_screen.dart';
import '../presentation/casino_sign_in_module/fifth_day_sign_in_screen/fifth_day_sign_in_screen.dart';
import '../presentation/casino_sign_in_module/casino_bonus_rewards_screen/casino_bonus_rewards_screen.dart';
import '../presentation/casino_sign_in_module/account_setup_completion_screen/account_setup_completion_screen.dart';
import '../presentation/casino_sign_in_module/j_bet88_login_screen_two_screen/j_bet88_login_screen_two_screen.dart';

// Casino Sign-in Module Bindings
import '../presentation/casino_sign_in_module/daily_sign_in_rewards_screen/binding/daily_sign_in_rewards_binding.dart';
import '../presentation/casino_sign_in_module/phone_verification_screen/binding/phone_verification_binding.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen/binding/j_bet88_registration_binding.dart';
import '../presentation/casino_sign_in_module/game_reward_claim_screen/binding/game_reward_claim_binding.dart';
import '../presentation/casino_sign_in_module/sign_in_re_sign_screen/binding/sign_in_re_sign_binding.dart';
import '../presentation/casino_sign_in_module/j_bet88_login_screen/binding/j_bet88_login_binding.dart';
import '../presentation/casino_sign_in_module/fourth_day_sign_in_screen/binding/fourth_day_sign_in_binding.dart';
import '../presentation/casino_sign_in_module/registration_success_screen/binding/registration_success_binding.dart';
import '../presentation/casino_sign_in_module/user_agreement_screen/binding/user_agreement_binding.dart';
import '../presentation/casino_sign_in_module/congratulations_bonus_screen/binding/congratulations_bonus_binding.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen_two_screen/binding/j_bet88_registration_screen_two_binding.dart';
import '../presentation/casino_sign_in_module/j_bet88_registration_screen_three_screen/binding/j_bet88_registration_screen_three_binding.dart';
import '../presentation/casino_sign_in_module/money_rain_event_screen/binding/money_rain_event_binding.dart';
import '../presentation/casino_sign_in_module/free_sign_in_rewards_screen/binding/free_sign_in_rewards_binding.dart';
import '../presentation/casino_sign_in_module/fifth_day_sign_in_screen/binding/fifth_day_sign_in_binding.dart';
import '../presentation/casino_sign_in_module/casino_bonus_rewards_screen/binding/casino_bonus_rewards_binding.dart';
import '../presentation/casino_sign_in_module/account_setup_completion_screen/binding/account_setup_completion_binding.dart';
import '../presentation/casino_sign_in_module/j_bet88_login_screen_two_screen/binding/j_bet88_login_screen_two_binding.dart';

import '../presentation/shared/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/splash_screen/splash_screen/binding/splash_binding.dart';

// Spin Wheel Module imports
import '../presentation/spin_wheel_module/money_rain_rewards_screen/money_rain_rewards_screen.dart';
import '../presentation/spin_wheel_module/spin_wheel_withdrawal_confirmation_screen/spin_wheel_withdrawal_confirmation_screen.dart';
import '../presentation/spin_wheel_module/withdrawal_confirmation_screen/withdrawal_confirmation_screen.dart';
import '../presentation/spin_wheel_module/spin_bonus_leaderboard_screen/spin_bonus_leaderboard_screen.dart';
import '../presentation/spin_wheel_module/money_rain_game_screen/money_rain_game_screen.dart';
import '../presentation/spin_wheel_module/money_rain_promotion_screen/money_rain_promotion_screen.dart';
import '../presentation/spin_wheel_module/spin_wheel_dashboard_screen/spin_wheel_dashboard_screen.dart';
import '../presentation/spin_wheel_module/narad_money_rain_promotion_screen/narad_money_rain_promotion_screen.dart';
import '../presentation/spin_wheel_module/money_rain_gaming_app_screen/money_rain_gaming_app_screen.dart';
import '../presentation/spin_wheel_module/spin_referral_bonus_modal_screen/spin_referral_bonus_modal_screen.dart';
import '../presentation/spin_wheel_module/lucky_spin_invitation_guide_screen/lucky_spin_invitation_guide_screen.dart';
import '../presentation/spin_wheel_module/gaming_money_rain_promotion_screen/gaming_money_rain_promotion_screen.dart';
import '../presentation/spin_wheel_module/jeet98_spin_wheel_bonus_screen/jeet98_spin_wheel_bonus_screen.dart';
import '../presentation/spin_wheel_module/phone_verification_screen/phone_verification_screen.dart';
import '../presentation/spin_wheel_module/withdrawal_history_screen/withdrawal_history_screen.dart';
import '../presentation/spin_wheel_module/withdrawal_history_empty_screen/withdrawal_history_empty_screen.dart';
import '../presentation/spin_wheel_module/spin_game_rules_modal_screen/spin_game_rules_modal_screen.dart';
import '../presentation/spin_wheel_module/jet_bet_casino_home_screen/jet_bet_casino_home_screen.dart';

import '../presentation/spin_wheel_module/money_rain_rewards_screen/binding/money_rain_rewards_binding.dart';
import '../presentation/spin_wheel_module/spin_wheel_withdrawal_confirmation_screen/binding/spin_wheel_withdrawal_confirmation_binding.dart';
import '../presentation/spin_wheel_module/withdrawal_confirmation_screen/binding/withdrawal_confirmation_binding.dart';
import '../presentation/spin_wheel_module/spin_bonus_leaderboard_screen/binding/spin_bonus_leaderboard_binding.dart';
import '../presentation/spin_wheel_module/money_rain_game_screen/binding/money_rain_game_binding.dart';
import '../presentation/spin_wheel_module/money_rain_promotion_screen/binding/money_rain_promotion_binding.dart';
import '../presentation/spin_wheel_module/spin_wheel_dashboard_screen/binding/spin_wheel_dashboard_binding.dart';
import '../presentation/spin_wheel_module/narad_money_rain_promotion_screen/binding/narad_money_rain_promotion_binding.dart';
import '../presentation/spin_wheel_module/money_rain_gaming_app_screen/binding/money_rain_gaming_app_binding.dart';
import '../presentation/spin_wheel_module/spin_referral_bonus_modal_screen/binding/spin_referral_bonus_modal_binding.dart';
import '../presentation/spin_wheel_module/lucky_spin_invitation_guide_screen/binding/lucky_spin_invitation_guide_binding.dart';
import '../presentation/spin_wheel_module/gaming_money_rain_promotion_screen/binding/gaming_money_rain_promotion_binding.dart';
import '../presentation/spin_wheel_module/jeet98_spin_wheel_bonus_screen/binding/jeet98_spin_wheel_bonus_binding.dart';
import '../presentation/spin_wheel_module/phone_verification_screen/binding/phone_verification_binding.dart';
import '../presentation/spin_wheel_module/withdrawal_history_screen/binding/withdrawal_history_binding.dart';
import '../presentation/spin_wheel_module/withdrawal_history_empty_screen/binding/withdrawal_history_empty_binding.dart';
import '../presentation/spin_wheel_module/spin_game_rules_modal_screen/binding/spin_game_rules_modal_binding.dart';
import '../presentation/spin_wheel_module/jet_bet_casino_home_screen/binding/jet_bet_casino_home_binding.dart';
import '../presentation/spin_wheel_module/app_navigation_screen/binding/app_navigation_binding.dart' as spin_nav;

// ignore_for_file: must_be_immutable
class AppRoutes {
  // Agent Module Routes
  static const String agentModule = '/agent';
  static const String referralRewardsScreen = '/agent/referral_rewards_screen';
  static const String invitationBonusScreen = '/agent/invitation_bonus_screen';
  static const String agentReferralProgramScreen = '/agent/agent_referral_program_screen';
  static const String masterAgentDashboardScreen = '/agent/master_agent_dashboard_screen';
  static const String achievementRewardsScreen = '/agent/achievement_rewards_screen';
  static const String achievementRewardsScreenInitialPage = '/agent/achievement_rewards_screen_initial_page';
  static const String agentIncomeOverviewScreen = '/agent/agent_income_overview_screen';
  static const String casinoHomeScreen = '/agent/casino_home_screen';
  static const String juniorAgentDashboardScreen = '/agent/junior_agent_dashboard_screen';
  static const String intermediateAgentDashboardScreen = '/agent/intermediate_agent_dashboard_screen';
  static const String maxTierAgentDashboardScreen = '/agent/max_tier_agent_dashboard_screen';
  static const String seniorAgentDashboardScreen = '/agent/senior_agent_dashboard_screen';
  static const String gamingHubScreen = '/agent/gaming_hub_screen';
  static const String congratulationsRewardScreen = '/agent/congratulations_reward_screen';
  static const String eliteAgentDashboardScreen = '/agent/elite_agent_dashboard_screen';

  // Auth System Module Routes
  static const String authModule = '/auth';
  static const String casinoAppPromotionScreen = '/auth/casino_app_promotion_screen';
  static const String systemMaintenanceScreen = '/auth/system_maintenance_screen';
  static const String forgotPasswordScreen = '/auth/forgot_password_screen';
  static const String agentDashboardScreen = '/auth/agent_dashboard_screen';
  static const String appDownloadPromotionScreen = '/auth/app_download_promotion_screen';
  static const String contentModalScreen = '/auth/content_modal_screen';
  static const String authAchievementRewardsScreen = '/auth/achievement_rewards_screen';
  static const String systemMaintenanceScreenTwo = '/auth/system_maintenance_screen_two';
  static const String systemMaintenanceScreenThree = '/auth/system_maintenance_screen_three';
  static const String forgotPasswordScreenTwo = '/auth/forgot_password_screen_two';
  static const String authAgentReferralProgramScreen = '/auth/agent_referral_program_screen';
  static const String achievementDashboardScreen = '/auth/achievement_dashboard_screen';
  static const String cardMatkaGameScreen = '/auth/card_matka_game_screen';
  static const String loginSessionExpiredScreen = '/auth/login_session_expired_screen';
  static const String agentInviteDashboardScreen = '/auth/agent_invite_dashboard_screen';
  static const String jBetAgentDashboardScreen = '/auth/j_bet_agent_dashboard_screen';
  static const String systemMaintenanceScreenFour = '/auth/system_maintenance_screen_four';
  static const String ticketRecordsNetworkErrorScreen = '/auth/ticket_records_network_error_screen';

  // VIP Rewards Module Routes
  static const String vipModule = '/vip';
  static const String vipRankIconsGalleryScreen = '/vip/vip_rank_icons_gallery_screen';
  static const String vipRewardsAndBenefitsScreen = '/vip/vip_rewards_and_benefits_screen';
  static const String vipCashbackDashboardScreen = '/vip/vip_cashback_dashboard_screen';
  static const String vipRewardsDashboardScreen = '/vip/vip_rewards_dashboard_screen';
  static const String vipUpgradeRequirementsScreen = '/vip/vip_upgrade_requirements_screen';
  static const String vipRewardsBenefitsScreen = '/vip/vip_rewards_benefits_screen';
  static const String jbet88VipRewardsDashboardScreen = '/vip/jbet88_vip_rewards_dashboard_screen';
  static const String vipWeeklyRewardsDashboardScreen = '/vip/vip_weekly_rewards_dashboard_screen';
  static const String vipMonthlySalaryDetailsScreen = '/vip/vip_monthly_salary_details_screen';
  static const String vipDailySalaryRewardsScreen = '/vip/vip_daily_salary_rewards_screen';
  static const String vipDailySalaryDashboardScreen = '/vip/vip_daily_salary_dashboard_screen';
  static const String vipDailySalaryClaimedScreen = '/vip/vip_daily_salary_claimed_screen';
  static const String vipWeeklySalaryDetailsScreen = '/vip/vip_weekly_salary_details_screen';
  static const String jbet88VipUpgradeBonusScreen = '/vip/jbet88_vip_upgrade_bonus_screen';
  static const String vipCashbackEligibleScreen = '/vip/vip_cashback_eligible_screen';
  static const String vipWeeklySalarySubmittedScreen = '/vip/vip_weekly_salary_submitted_screen';
  static const String vipMonthlySalaryBenefitsScreen = '/vip/vip_monthly_salary_benefits_screen';
  static const String vipWeeklySalaryPendingScreen = '/vip/vip_weekly_salary_pending_screen';

  // Financial Analytics Module Routes
  static const String phoneVerificationScreen = '/financial/phone_verification_screen';
  static const String socialShareScreen = '/financial/social_share_screen';
  static const String phoneVerificationScreenTwo = '/financial/phone_verification_screen_two';
  static const String jackpotHistoryScreen = '/financial/jackpot_history_screen';
  static const String rewardsScreen = '/financial/rewards_screen';
  static const String teamsDashboardScreen = '/financial/teams_dashboard_screen';
  static const String agentJackpotHistoryScreen = '/financial/agent_jackpot_history_screen';
  static const String incomeAnalyticsDashboardScreen = '/financial/income_analytics_dashboard_screen';
  static const String rewardsCongratulationsScreen = '/financial/rewards_congratulations_screen';
  static const String phoneVerificationScreenThree = '/financial/phone_verification_screen_three';
  static const String teamHierarchyModalScreen = '/financial/team_hierarchy_modal_screen';
  static const String incomeDashboardScreen = '/financial/income_dashboard_screen';
  static const String agentJackpotHistoryScreenTwo = '/financial/agent_jackpot_history_screen_two';
  static const String giftCodeExchangeScreen = '/financial/gift_code_exchange_screen';
  static const String phoneVerificationScreenFour = '/financial/phone_verification_screen_four';
  static const String incomeDashboardScreenTwo = '/financial/income_dashboard_screen_two';
  static const String incomeDashboardScreenThree = '/financial/income_dashboard_screen_three';
  static const String phoneVerificationScreenFive = '/financial/phone_verification_screen_five';

  // Bonus Rewards Module Routes (from app_8)
  static const String bonusAppDownloadScreen = '/bonus/app_download_screen';
  static const String bonusAchievementBonusScreen = '/bonus/achievement_bonus_screen';
  static const String bonusRegistrationBonusScreen = '/bonus/registration_bonus_screen';
  static const String bonusSignInRewardsScreen = '/bonus/sign_in_rewards_screen';
  static const String bonusCasinoGamingHubScreen = '/bonus/casino_gaming_hub_screen';
  static const String bonusContinuousSignInMakeupScreen = '/bonus/continuous_sign_in_makeup_screen';
  static const String bonusContinuousSignInScreen = '/bonus/continuous_sign_in_screen';
  static const String bonusAgentLevelSystemScreen = '/bonus/agent_level_system_screen';
  static const String bonusAgentIncomeModalScreen = '/bonus/agent_income_modal_screen';
  static const String bonusGamingHomeScreen = '/bonus/gaming_home_screen';
  static const String bonusQualifiedBonusScreen = '/bonus/qualified_bonus_screen';
  static const String bonusContinuousSignInActivityScreen = '/bonus/continuous_sign_in_activity_screen';
  static const String bonusBonusDashboardScreen = '/bonus/bonus_dashboard_screen';
  static const String bonusBettingBonusScreen = '/bonus/betting_bonus_screen';
  static const String bonusGamingAppDownloadScreen = '/bonus/gaming_app_download_screen';
  static const String bonusSignedInRewardsScreen = '/bonus/signed_in_rewards_screen';
  static const String bonusJetBetCasinoScreen = '/bonus/jet_bet_casino_screen';
  static const String bonusDepositBonusHistoryScreen = '/bonus/deposit_bonus_history_screen';
  static const String bonusAppNavigationScreen = '/bonus/app_navigation_screen';

  // Gaming Casino Module Routes
  static const String casinoGameDetailModalScreen = '/gaming/casino_game_detail_modal_screen';
  static const String bettingRewardsDescriptionModalScreen = '/gaming/betting_rewards_description_modal_screen';
  static const String gamingAgentRankingBonusRulesScreen = '/gaming/agent_ranking_bonus_rules_screen';
  static const String gamingBonusRewardsScreen = '/gaming/gaming_bonus_rewards_screen';
  static const String jetsoCasinoHomeScreen = '/gaming/jetso_casino_home_screen';
  static const String currentRankingLeaderboardScreen = '/gaming/current_ranking_leaderboard_screen';
  static const String bet88AgentJackpotRankingScreen = '/gaming/bet88_agent_jackpot_ranking_screen';
  static const String gamingVipDailySalaryDashboardScreen = '/gaming/vip_daily_salary_dashboard_screen';
  static const String jetBrGamingPromotionsScreen = '/gaming/jet_br_gaming_promotions_screen';
  static const String bet88AgentJackpotRankingScreenTwo = '/gaming/bet88_agent_jackpot_ranking_screen_two';
  static const String agentJackpotHistoryRankingScreen = '/gaming/agent_jackpot_history_ranking_screen';
  static const String jbet88UserDashboardScreen = '/gaming/jbet88_user_dashboard_screen';
  static const String currentRankingLeaderboardScreenTwo = '/gaming/current_ranking_leaderboard_screen_two';
  static const String jetBetGamingHubScreen = '/gaming/jet_bet_gaming_hub_screen';
  static const String provedorDeJogosBonusScreen = '/gaming/provedor_de_jogos_bonus_screen';
  static const String betboRewardsScreen = '/gaming/betbo_rewards_screen';
  static const String betboRewardsScreenTwo = '/gaming/betbo_rewards_screen_two';
  static const String naradGamingDashboardScreen = '/gaming/narad_gaming_dashboard_screen';
  static const String gamingAppNavigationScreen = '/gaming/app_navigation_screen';

  // Casino Sign-in Module Routes
  static const String casinoSignInModule = '/casino_sign_in';
  static const String dailySignInRewardsScreen = '/casino_sign_in/daily_sign_in_rewards_screen';
  static const String phoneVerificationScreen = '/casino_sign_in/phone_verification_screen';
  static const String jBet88RegistrationScreen = '/casino_sign_in/j_bet88_registration_screen';
  static const String gameRewardClaimScreen = '/casino_sign_in/game_reward_claim_screen';
  static const String signInReSignScreen = '/casino_sign_in/sign_in_re_sign_screen';
  static const String jBet88LoginScreen = '/casino_sign_in/j_bet88_login_screen';
  static const String fourthDaySignInScreen = '/casino_sign_in/fourth_day_sign_in_screen';
  static const String registrationSuccessScreen = '/casino_sign_in/registration_success_screen';
  static const String userAgreementScreen = '/casino_sign_in/user_agreement_screen';
  static const String congratulationsBonusScreen = '/casino_sign_in/congratulations_bonus_screen';
  static const String jBet88RegistrationScreenTwo = '/casino_sign_in/j_bet88_registration_screen_two';
  static const String jBet88RegistrationScreenThree = '/casino_sign_in/j_bet88_registration_screen_three';
  static const String moneyRainEventScreen = '/casino_sign_in/money_rain_event_screen';
  static const String freeSignInRewardsScreen = '/casino_sign_in/free_sign_in_rewards_screen';
  static const String fifthDaySignInScreen = '/casino_sign_in/fifth_day_sign_in_screen';
  static const String casinoBonusRewardsScreen = '/casino_sign_in/casino_bonus_rewards_screen';
  static const String accountSetupCompletionScreen = '/casino_sign_in/account_setup_completion_screen';
  static const String jBet88LoginScreenTwo = '/casino_sign_in/j_bet88_login_screen_two';

  // Deposit Payment Module Routes
  static const String depositPaymentModule = '/deposit_payment';
  static const String jeetbajiGamingHomeScreen = '/deposit_payment/jeetbaji_gaming_home_screen';
  static const String naradGamingHubHomeScreen = '/deposit_payment/narad_gaming_hub_home_screen';
  static const String gCashDepositDetailScreen = '/deposit_payment/g_cash_deposit_detail_screen';
  static const String gCashDepositRejectionDetailScreen = '/deposit_payment/g_cash_deposit_rejection_detail_screen';
  static const String depositRecordListScreen = '/deposit_payment/deposit_record_list_screen';
  static const String depositConfirmationScreen = '/deposit_payment/deposit_confirmation_screen';
  static const String walletDepositConfirmationScreen = '/deposit_payment/wallet_deposit_confirmation_screen';
  static const String walletDepositScreen = '/deposit_payment/wallet_deposit_screen';
  static const String paymentStatusScreen = '/deposit_payment/payment_status_screen';
  static const String jBet88DepositBonusScreen = '/deposit_payment/j_bet88_deposit_bonus_screen';
  static const String walletDepositAmountScreen = '/deposit_payment/wallet_deposit_amount_screen';
  static const String depositRecordMethodFilterScreen = '/deposit_payment/deposit_record_method_filter_screen';
  static const String depositRecordTimeFilterScreen = '/deposit_payment/deposit_record_time_filter_screen';
  static const String walletDepositPaymentScreen = '/deposit_payment/wallet_deposit_payment_screen';
  static const String depositTransactionConfirmationScreen = '/deposit_payment/deposit_transaction_confirmation_screen';
  static const String jBet88DepositPromotionScreen = '/deposit_payment/j_bet88_deposit_promotion_screen';
  static const String naradGamingCasinoHomeScreen = '/deposit_payment/narad_gaming_casino_home_screen';

  // Gaming Withdrawal Module Routes (from app_13)
  static const String gamingWithdrawalModule = '/gaming_withdrawal';
  static const String spinGameVictoryScreen = '/gaming_withdrawal/spin_game_victory_screen';
  static const String withdrawalSuccessScreen = '/gaming_withdrawal/withdrawal_success_screen';
  static const String jetbetGamingHubScreen = '/gaming_withdrawal/jetbet_gaming_hub_screen';
  static const String jetbetGamingHubScreenInitialPage = '/gaming_withdrawal/jetbet_gaming_hub_screen_initial_page';
  static const String naradGamingHubHomeScreen = '/gaming_withdrawal/narad_gaming_hub_home_screen';
  static const String naradCasinoHomeScreen = '/gaming_withdrawal/narad_casino_home_screen';
  static const String spinGameCashWithdrawalScreen = '/gaming_withdrawal/spin_game_cash_withdrawal_screen';
  static const String spinWheelVictoryScreen = '/gaming_withdrawal/spin_wheel_victory_screen';
  static const String noticeNotificationsScreen = '/gaming_withdrawal/notice_notifications_screen';
  static const String withdrawalHelpScreen = '/gaming_withdrawal/withdrawal_help_screen';
  static const String casinoSpinWinCelebrationScreen = '/gaming_withdrawal/casino_spin_win_celebration_screen';
  static const String naradCasinoGameHubScreen = '/gaming_withdrawal/narad_casino_game_hub_screen';
  static const String naradCasinoGamingPlatformScreen = '/gaming_withdrawal/narad_casino_gaming_platform_screen';
  static const String luckyBonusWithdrawalScreen = '/gaming_withdrawal/lucky_bonus_withdrawal_screen';
  static const String spinGameRewardVictoryScreen = '/gaming_withdrawal/spin_game_reward_victory_screen';
  static const String gamingWithdrawalConfirmationScreen = '/gaming_withdrawal/gaming_withdrawal_confirmation_screen';
  static const String referralBonusDialogScreen = '/gaming_withdrawal/referral_bonus_dialog_screen';
  static const String naradGamingPlatformHomeScreen = '/gaming_withdrawal/narad_gaming_platform_home_screen';
  static const String noticeEmptyStateScreen = '/gaming_withdrawal/notice_empty_state_screen';
  static const String gamingWithdrawalAppNavigationScreen = '/gaming_withdrawal/app_navigation_screen';

  // Shared Routes
  static const String splashScreen = '/splash_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  // Spin Wheel Module Routes
  static const String spinWheelModule = '/spin_wheel';
  static const String moneyRainRewardsScreen = '/spin_wheel/money_rain_rewards_screen';
  static const String spinWheelWithdrawalConfirmationScreen = '/spin_wheel/spin_wheel_withdrawal_confirmation_screen';
  static const String withdrawalConfirmationScreen = '/spin_wheel/withdrawal_confirmation_screen';
  static const String spinBonusLeaderboardScreen = '/spin_wheel/spin_bonus_leaderboard_screen';
  static const String moneyRainGameScreen = '/spin_wheel/money_rain_game_screen';
  static const String moneyRainPromotionScreen = '/spin_wheel/money_rain_promotion_screen';
  static const String spinWheelDashboardScreen = '/spin_wheel/spin_wheel_dashboard_screen';
  static const String naradMoneyRainPromotionScreen = '/spin_wheel/narad_money_rain_promotion_screen';
  static const String moneyRainGamingAppScreen = '/spin_wheel/money_rain_gaming_app_screen';
  static const String spinReferralBonusModalScreen = '/spin_wheel/spin_referral_bonus_modal_screen';
  static const String luckySpinInvitationGuideScreen = '/spin_wheel/lucky_spin_invitation_guide_screen';
  static const String gamingMoneyRainPromotionScreen = '/spin_wheel/gaming_money_rain_promotion_screen';
  static const String jeet98SpinWheelBonusScreen = '/spin_wheel/jeet98_spin_wheel_bonus_screen';
  static const String spinPhoneVerificationScreen = '/spin_wheel/phone_verification_screen';
  static const String withdrawalHistoryScreen = '/spin_wheel/withdrawal_history_screen';
  static const String withdrawalHistoryEmptyScreen = '/spin_wheel/withdrawal_history_empty_screen';
  static const String spinGameRulesModalScreen = '/spin_wheel/spin_game_rules_modal_screen';
  static const String jetBetCasinoHomeScreen = '/spin_wheel/jet_bet_casino_home_screen';

  static List<GetPage> pages = [
    // Agent Module Pages
    GetPage(
      name: referralRewardsScreen,
      page: () => ReferralRewardsScreen(),
      bindings: [ReferralRewardsBinding()],
    ),
    GetPage(
      name: invitationBonusScreen,
      page: () => InvitationBonusScreen(),
      bindings: [InvitationBonusBinding()],
    ),
    GetPage(
      name: agentReferralProgramScreen,
      page: () => AgentReferralProgramScreen(),
      bindings: [AgentReferralProgramBinding()],
    ),
    GetPage(
      name: masterAgentDashboardScreen,
      page: () => MasterAgentDashboardScreen(),
      bindings: [MasterAgentDashboardBinding()],
    ),
    GetPage(
      name: achievementRewardsScreen,
      page: () => AchievementRewardsScreen(),
      bindings: [AchievementRewardsBinding()],
    ),
    GetPage(
      name: achievementRewardsScreenInitialPage,
      page: () => AchievementRewardsScreen(),
      bindings: [AchievementRewardsBinding()],
    ),
    GetPage(
      name: agentIncomeOverviewScreen,
      page: () => agent_income.AgentIncomeOverviewScreen(),
      bindings: [AgentIncomeOverviewBinding()],
    ),
    GetPage(
      name: casinoHomeScreen,
      page: () => CasinoHomeScreen(),
      bindings: [CasinoHomeBinding()],
    ),
    GetPage(
      name: juniorAgentDashboardScreen,
      page: () => JuniorAgentDashboardScreen(),
      bindings: [JuniorAgentDashboardBinding()],
    ),
    GetPage(
      name: intermediateAgentDashboardScreen,
      page: () => IntermediateAgentDashboardScreen(),
      bindings: [IntermediateAgentDashboardBinding()],
    ),
    GetPage(
      name: maxTierAgentDashboardScreen,
      page: () => MaxTierAgentDashboardScreen(),
      bindings: [MaxTierAgentDashboardBinding()],
    ),
    GetPage(
      name: seniorAgentDashboardScreen,
      page: () => SeniorAgentDashboardScreen(),
      bindings: [SeniorAgentDashboardBinding()],
    ),
    GetPage(
      name: gamingHubScreen,
      page: () => GamingHubScreen(),
      bindings: [GamingHubBinding()],
    ),
    GetPage(
      name: congratulationsRewardScreen,
      page: () => CongratulationsRewardScreen(),
      bindings: [CongratulationsRewardBinding()],
    ),
    GetPage(
      name: eliteAgentDashboardScreen,
      page: () => EliteAgentDashboardScreen(),
      bindings: [EliteAgentDashboardBinding()],
    ),

    // Auth System Module Pages
    GetPage(
      name: casinoAppPromotionScreen,
      page: () => CasinoAppPromotionScreen(),
      bindings: [CasinoAppPromotionBinding()],
    ),
    GetPage(
      name: systemMaintenanceScreen,
      page: () => SystemMaintenanceScreen(),
      bindings: [SystemMaintenanceBinding()],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [ForgotPasswordBinding()],
    ),
    GetPage(
      name: agentDashboardScreen,
      page: () => AgentDashboardScreen(),
      bindings: [AgentDashboardBinding()],
    ),
    GetPage(
      name: appDownloadPromotionScreen,
      page: () => AppDownloadPromotionScreen(),
      bindings: [AppDownloadPromotionBinding()],
    ),
    GetPage(
      name: contentModalScreen,
      page: () => ContentModalScreen(),
      bindings: [ContentModalBinding()],
    ),
    GetPage(
      name: authAchievementRewardsScreen,
      page: () => auth_achievement.AchievementRewardsScreen(),
      bindings: [auth_achievement_binding.AchievementRewardsBinding()],
    ),
    GetPage(
      name: systemMaintenanceScreenTwo,
      page: () => SystemMaintenanceScreenTwo(),
      bindings: [SystemMaintenanceScreenTwoBinding()],
    ),
    GetPage(
      name: systemMaintenanceScreenThree,
      page: () => SystemMaintenanceScreenThree(),
      bindings: [SystemMaintenanceScreenThreeBinding()],
    ),
    GetPage(
      name: forgotPasswordScreenTwo,
      page: () => ForgotPasswordScreenTwo(),
      bindings: [ForgotPasswordScreenTwoBinding()],
    ),
    GetPage(
      name: authAgentReferralProgramScreen,
      page: () => auth_referral.AgentReferralProgramScreen(),
      bindings: [auth_referral_binding.AgentReferralProgramBinding()],
    ),
    GetPage(
      name: achievementDashboardScreen,
      page: () => AchievementDashboardScreen(),
      bindings: [AchievementDashboardBinding()],
    ),
    GetPage(
      name: cardMatkaGameScreen,
      page: () => CardMatkaGameScreen(),
      bindings: [CardMatkaGameBinding()],
    ),
    GetPage(
      name: loginSessionExpiredScreen,
      page: () => LoginSessionExpiredScreen(),
      bindings: [LoginSessionExpiredBinding()],
    ),
    GetPage(
      name: agentInviteDashboardScreen,
      page: () => AgentInviteDashboardScreen(),
      bindings: [AgentInviteDashboardBinding()],
    ),
    GetPage(
      name: jBetAgentDashboardScreen,
      page: () => JBetAgentDashboardScreen(),
      bindings: [JBetAgentDashboardBinding()],
    ),
    GetPage(
      name: systemMaintenanceScreenFour,
      page: () => SystemMaintenanceScreenFour(),
      bindings: [SystemMaintenanceScreenFourBinding()],
    ),
    GetPage(
      name: ticketRecordsNetworkErrorScreen,
      page: () => TicketRecordsNetworkErrorScreen(),
      bindings: [TicketRecordsNetworkErrorBinding()],
    ),

    // VIP Rewards Module Pages
    GetPage(
      name: vipRankIconsGalleryScreen,
      page: () => VipRankIconsGalleryScreen(),
      bindings: [VipRankIconsGalleryBinding()],
    ),
    GetPage(
      name: vipRewardsAndBenefitsScreen,
      page: () => VipRewardsAndBenefitsScreen(),
      bindings: [VipRewardsAndBenefitsBinding()],
    ),
    GetPage(
      name: vipCashbackDashboardScreen,
      page: () => VipCashbackDashboardScreen(),
      bindings: [VipCashbackDashboardBinding()],
    ),
    GetPage(
      name: vipRewardsDashboardScreen,
      page: () => VipRewardsDashboardScreen(),
      bindings: [VipRewardsDashboardBinding()],
    ),
    GetPage(
      name: vipUpgradeRequirementsScreen,
      page: () => VipUpgradeRequirementsScreen(),
      bindings: [VipUpgradeRequirementsBinding()],
    ),
    GetPage(
      name: vipRewardsBenefitsScreen,
      page: () => VipRewardsBenefitsScreen(),
      bindings: [VipRewardsBenefitsBinding()],
    ),
    GetPage(
      name: jbet88VipRewardsDashboardScreen,
      page: () => Jbet88VipRewardsDashboardScreen(),
      bindings: [Jbet88VipRewardsDashboardBinding()],
    ),
    GetPage(
      name: vipWeeklyRewardsDashboardScreen,
      page: () => VipWeeklyRewardsDashboardScreen(),
      bindings: [VipWeeklyRewardsDashboardBinding()],
    ),
    GetPage(
      name: vipMonthlySalaryDetailsScreen,
      page: () => VipMonthlySalaryDetailsScreen(),
      bindings: [VipMonthlySalaryDetailsBinding()],
    ),
    GetPage(
      name: vipDailySalaryRewardsScreen,
      page: () => VipDailySalaryRewardsScreen(),
      bindings: [VipDailySalaryRewardsBinding()],
    ),
    GetPage(
      name: vipDailySalaryDashboardScreen,
      page: () => VipDailySalaryDashboardScreen(),
      bindings: [VipDailySalaryDashboardBinding()],
    ),
    GetPage(
      name: vipDailySalaryClaimedScreen,
      page: () => VipDailySalaryClaimedScreen(),
      bindings: [VipDailySalaryClaimedBinding()],
    ),
    GetPage(
      name: vipWeeklySalaryDetailsScreen,
      page: () => VipWeeklySalaryDetailsScreen(),
      bindings: [VipWeeklySalaryDetailsBinding()],
    ),
    GetPage(
      name: jbet88VipUpgradeBonusScreen,
      page: () => Jbet88VipUpgradeBonusScreen(),
      bindings: [Jbet88VipUpgradeBonusBinding()],
    ),
    GetPage(
      name: vipCashbackEligibleScreen,
      page: () => VipCashbackEligibleScreen(),
      bindings: [VipCashbackEligibleBinding()],
    ),
    GetPage(
      name: vipWeeklySalarySubmittedScreen,
      page: () => VipWeeklySalarySubmittedScreen(),
      bindings: [VipWeeklySalarySubmittedBinding()],
    ),
    GetPage(
      name: vipMonthlySalaryBenefitsScreen,
      page: () => VipMonthlySalaryBenefitsScreen(),
      bindings: [VipMonthlySalaryBenefitsBinding()],
    ),
    GetPage(
      name: vipWeeklySalaryPendingScreen,
      page: () => VipWeeklySalaryPendingScreen(),
      bindings: [VipWeeklySalaryPendingBinding()],
    ),

    // Financial Analytics Module Pages
    GetPage(
      name: phoneVerificationScreen,
      page: () => const PhoneVerificationScreen(),
      bindings: [PhoneVerificationBinding()],
    ),
    GetPage(
      name: socialShareScreen,
      page: () => const SocialShareScreen(),
      bindings: [SocialShareBinding()],
    ),
    GetPage(
      name: phoneVerificationScreenTwo,
      page: () => const PhoneVerificationScreenTwo(),
      bindings: [PhoneVerificationScreenTwoBinding()],
    ),
    GetPage(
      name: jackpotHistoryScreen,
      page: () => JackpotHistoryScreen(),
      bindings: [JackpotHistoryBinding()],
    ),
    GetPage(
      name: rewardsScreen,
      page: () => const RewardsScreen(),
      bindings: [RewardsBinding()],
    ),
    GetPage(
      name: teamsDashboardScreen,
      page: () => TeamsDashboardScreen(),
      bindings: [TeamsDashboardBinding()],
    ),
    GetPage(
      name: agentJackpotHistoryScreen,
      page: () => AgentJackpotHistoryScreen(),
      bindings: [AgentJackpotHistoryBinding()],
    ),

    // Gaming Casino Module Routes
    GetPage(
      name: casinoGameDetailModalScreen,
      page: () => CasinoGameDetailModalScreen(),
      bindings: [CasinoGameDetailModalBinding()],
    ),
    GetPage(
      name: bettingRewardsDescriptionModalScreen,
      page: () => BettingRewardsDescriptionModalScreen(),
      bindings: [BettingRewardsDescriptionModalBinding()],
    ),
    GetPage(
      name: gamingAgentRankingBonusRulesScreen,
      page: () => AgentRankingBonusRulesScreen(),
      bindings: [AgentRankingBonusRulesBinding()],
    ),
    GetPage(
      name: gamingBonusRewardsScreen,
      page: () => GamingBonusRewardsScreen(),
      bindings: [GamingBonusRewardsBinding()],
    ),
    GetPage(
      name: jetsoCasinoHomeScreen,
      page: () => JetsoCasinoHomeScreen(),
      bindings: [JetsoCasinoHomeBinding()],
    ),
    GetPage(
      name: currentRankingLeaderboardScreen,
      page: () => CurrentRankingLeaderboardScreen(),
      bindings: [CurrentRankingLeaderboardBinding()],
    ),
    GetPage(
      name: bet88AgentJackpotRankingScreen,
      page: () => Bet88AgentJackpotRankingScreen(),
      bindings: [Bet88AgentJackpotRankingBinding()],
    ),
    GetPage(
      name: gamingVipDailySalaryDashboardScreen,
      page: () => VipDailySalaryDashboardScreen(),
      bindings: [VipDailySalaryDashboardBinding()],
    ),
    GetPage(
      name: jetBrGamingPromotionsScreen,
      page: () => JetBrGamingPromotionsScreen(),
      bindings: [JetBrGamingPromotionsBinding()],
    ),
    GetPage(
      name: bet88AgentJackpotRankingScreenTwo,
      page: () => Bet88AgentJackpotRankingScreenTwo(),
      bindings: [Bet88AgentJackpotRankingScreenTwoBinding()],
    ),
    GetPage(
      name: agentJackpotHistoryRankingScreen,
      page: () => AgentJackpotHistoryRankingScreen(),
      bindings: [AgentJackpotHistoryRankingBinding()],
    ),
    GetPage(
      name: jbet88UserDashboardScreen,
      page: () => Jbet88UserDashboardScreen(),
      bindings: [Jbet88UserDashboardBinding()],
    ),
    GetPage(
      name: currentRankingLeaderboardScreenTwo,
      page: () => CurrentRankingLeaderboardScreenTwo(),
      bindings: [CurrentRankingLeaderboardScreenTwoBinding()],
    ),
    GetPage(
      name: jetBetGamingHubScreen,
      page: () => JetBetGamingHubScreen(),
      bindings: [JetBetGamingHubBinding()],
    ),
    GetPage(
      name: provedorDeJogosBonusScreen,
      page: () => ProvedorDeJogosBonusScreen(),
      bindings: [ProvedorDeJogosBonusBinding()],
    ),
    GetPage(
      name: betboRewardsScreen,
      page: () => BetboRewardsScreen(),
      bindings: [BetboRewardsBinding()],
    ),
    GetPage(
      name: betboRewardsScreenTwo,
      page: () => BetboRewardsScreenTwo(),
      bindings: [BetboRewardsScreenTwoBinding()],
    ),
    GetPage(
      name: naradGamingDashboardScreen,
      page: () => NaradGamingDashboardScreen(),
      bindings: [NaradGamingDashboardBinding()],
    ),
    GetPage(
      name: incomeAnalyticsDashboardScreen,
      page: () => IncomeAnalyticsDashboardScreen(),
      bindings: [IncomeAnalyticsDashboardBinding()],
    ),
    GetPage(
      name: rewardsCongratulationsScreen,
      page: () => const RewardsCongratulationsScreen(),
      bindings: [RewardsCongratulationsBinding()],
    ),
    GetPage(
      name: phoneVerificationScreenThree,
      page: () => const PhoneVerificationScreenThree(),
      bindings: [PhoneVerificationScreenThreeBinding()],
    ),
    GetPage(
      name: teamHierarchyModalScreen,
      page: () => const TeamHierarchyModalScreen(),
      bindings: [TeamHierarchyModalBinding()],
    ),
    GetPage(
      name: incomeDashboardScreen,
      page: () => IncomeDashboardScreen(),
      bindings: [IncomeDashboardBinding()],
    ),
    GetPage(
      name: agentJackpotHistoryScreenTwo,
      page: () => const AgentJackpotHistoryScreenTwo(),
      bindings: [AgentJackpotHistoryScreenTwoBinding()],
    ),
    GetPage(
      name: giftCodeExchangeScreen,
      page: () => const GiftCodeExchangeScreen(),
      bindings: [GiftCodeExchangeBinding()],
    ),
    GetPage(
      name: phoneVerificationScreenFour,
      page: () => const PhoneVerificationScreenFour(),
      bindings: [PhoneVerificationScreenFourBinding()],
    ),
    GetPage(
      name: incomeDashboardScreenTwo,
      page: () => IncomeDashboardScreenTwo(),
      bindings: [IncomeDashboardScreenTwoBinding()],
    ),
    GetPage(
      name: incomeDashboardScreenThree,
      page: () => IncomeDashboardScreenThree(),
      bindings: [IncomeDashboardScreenThreeBinding()],
    ),
    GetPage(
      name: phoneVerificationScreenFive,
      page: () => const PhoneVerificationScreenFive(),
      bindings: [PhoneVerificationScreenFiveBinding()],
    ),

    // Bonus Rewards Module Pages (from app_8)
    GetPage(
      name: bonusAppDownloadScreen,
      page: () => AppDownloadScreen(),
      bindings: [AppDownloadBinding()],
    ),
    GetPage(
      name: bonusAchievementBonusScreen,
      page: () => AchievementBonusScreen(),
      bindings: [AchievementBonusBinding()],
    ),
    GetPage(
      name: bonusRegistrationBonusScreen,
      page: () => RegistrationBonusScreen(),
      bindings: [RegistrationBonusBinding()],
    ),
    GetPage(
      name: bonusSignInRewardsScreen,
      page: () => SignInRewardsScreen(),
      bindings: [SignInRewardsBinding()],
    ),
    GetPage(
      name: bonusCasinoGamingHubScreen,
      page: () => CasinoGamingHubScreen(),
      bindings: [CasinoGamingHubBinding()],
    ),
    GetPage(
      name: bonusContinuousSignInMakeupScreen,
      page: () => ContinuousSignInMakeupScreen(),
      bindings: [ContinuousSignInMakeupBinding()],
    ),
    GetPage(
      name: bonusContinuousSignInScreen,
      page: () => ContinuousSignInScreen(),
      bindings: [ContinuousSignInBinding()],
    ),
    GetPage(
      name: bonusAgentLevelSystemScreen,
      page: () => AgentLevelSystemScreen(),
      bindings: [AgentLevelSystemBinding()],
    ),
    GetPage(
      name: bonusAgentIncomeModalScreen,
      page: () => AgentIncomeModalScreen(),
      bindings: [AgentIncomeModalBinding()],
    ),
    GetPage(
      name: bonusGamingHomeScreen,
      page: () => GamingHomeScreen(),
      bindings: [GamingHomeBinding()],
    ),
    GetPage(
      name: bonusQualifiedBonusScreen,
      page: () => QualifiedBonusScreen(),
      bindings: [QualifiedBonusBinding()],
    ),
    GetPage(
      name: bonusContinuousSignInActivityScreen,
      page: () => ContinuousSignInActivityScreen(),
      bindings: [ContinuousSignInActivityBinding()],
    ),
    GetPage(
      name: bonusBonusDashboardScreen,
      page: () => BonusDashboardScreen(),
      bindings: [BonusDashboardBinding()],
    ),
    GetPage(
      name: bonusBettingBonusScreen,
      page: () => BettingBonusScreen(),
      bindings: [BettingBonusBinding()],
    ),
    GetPage(
      name: bonusGamingAppDownloadScreen,
      page: () => GamingAppDownloadScreen(),
      bindings: [GamingAppDownloadBinding()],
    ),
    GetPage(
      name: bonusSignedInRewardsScreen,
      page: () => SignedInRewardsScreen(),
      bindings: [SignedInRewardsBinding()],
    ),
    GetPage(
      name: bonusJetBetCasinoScreen,
      page: () => JetBetCasinoScreen(),
      bindings: [JetBetCasinoBinding()],
    ),
    GetPage(
      name: bonusDepositBonusHistoryScreen,
      page: () => DepositBonusHistoryScreen(),
      bindings: [DepositBonusHistoryBinding()],
    ),
    GetPage(
      name: bonusAppNavigationScreen,
      page: () => bonus_nav.AppNavigationScreen(),
      bindings: [bonus_nav.AppNavigationBinding()],
    ),

    // Casino Sign-in Module Pages
    GetPage(
      name: dailySignInRewardsScreen,
      page: () => DailySignInRewardsScreen(),
      bindings: [DailySignInRewardsBinding()],
    ),
    GetPage(
      name: phoneVerificationScreen,
      page: () => PhoneVerificationScreen(),
      bindings: [PhoneVerificationBinding()],
    ),
    GetPage(
      name: jBet88RegistrationScreen,
      page: () => JBet88RegistrationScreen(),
      bindings: [JBet88RegistrationBinding()],
    ),
    GetPage(
      name: gameRewardClaimScreen,
      page: () => GameRewardClaimScreen(),
      bindings: [GameRewardClaimBinding()],
    ),
    GetPage(
      name: signInReSignScreen,
      page: () => SignInReSignScreen(),
      bindings: [SignInReSignBinding()],
    ),
    GetPage(
      name: jBet88LoginScreen,
      page: () => JBet88LoginScreen(),
      bindings: [JBet88LoginBinding()],
    ),
    GetPage(
      name: fourthDaySignInScreen,
      page: () => FourthDaySignInScreen(),
      bindings: [FourthDaySignInBinding()],
    ),
    GetPage(
      name: registrationSuccessScreen,
      page: () => RegistrationSuccessScreen(),
      bindings: [RegistrationSuccessBinding()],
    ),
    GetPage(
      name: userAgreementScreen,
      page: () => UserAgreementScreen(),
      bindings: [UserAgreementBinding()],
    ),
    GetPage(
      name: congratulationsBonusScreen,
      page: () => CongratulationsBonusScreen(),
      bindings: [CongratulationsBonusBinding()],
    ),
    GetPage(
      name: jBet88RegistrationScreenTwo,
      page: () => JBet88RegistrationScreenTwoScreen(),
      bindings: [JBet88RegistrationScreenTwoBinding()],
    ),
    GetPage(
      name: jBet88RegistrationScreenThree,
      page: () => JBet88RegistrationScreenThreeScreen(),
      bindings: [JBet88RegistrationScreenThreeBinding()],
    ),
    GetPage(
      name: moneyRainEventScreen,
      page: () => MoneyRainEventScreen(),
      bindings: [MoneyRainEventBinding()],
    ),
    GetPage(
      name: freeSignInRewardsScreen,
      page: () => FreeSignInRewardsScreen(),
      bindings: [FreeSignInRewardsBinding()],
    ),
    GetPage(
      name: fifthDaySignInScreen,
      page: () => FifthDaySignInScreen(),
      bindings: [FifthDaySignInBinding()],
    ),
    GetPage(
      name: casinoBonusRewardsScreen,
      page: () => CasinoBonusRewardsScreen(),
      bindings: [CasinoBonusRewardsBinding()],
    ),
    GetPage(
      name: accountSetupCompletionScreen,
      page: () => AccountSetupCompletionScreen(),
      bindings: [AccountSetupCompletionBinding()],
    ),
    GetPage(
      name: jBet88LoginScreenTwo,
      page: () => JBet88LoginScreenTwoScreen(),
      bindings: [JBet88LoginScreenTwoBinding()],
    ),

    // Shared Pages
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),

    // Spin Wheel Module Routes
    GetPage(
      name: moneyRainRewardsScreen,
      page: () => MoneyRainRewardsScreen(),
      bindings: [MoneyRainRewardsBinding()],
    ),
    GetPage(
      name: spinWheelWithdrawalConfirmationScreen,
      page: () => SpinWheelWithdrawalConfirmationScreen(),
      bindings: [SpinWheelWithdrawalConfirmationBinding()],
    ),
    GetPage(
      name: withdrawalConfirmationScreen,
      page: () => WithdrawalConfirmationScreen(),
      bindings: [WithdrawalConfirmationBinding()],
    ),
    GetPage(
      name: spinBonusLeaderboardScreen,
      page: () => SpinBonusLeaderboardScreen(),
      bindings: [SpinBonusLeaderboardBinding()],
    ),
    GetPage(
      name: moneyRainGameScreen,
      page: () => MoneyRainGameScreen(),
      bindings: [MoneyRainGameBinding()],
    ),
    GetPage(
      name: moneyRainPromotionScreen,
      page: () => MoneyRainPromotionScreen(),
      bindings: [MoneyRainPromotionBinding()],
    ),
    GetPage(
      name: spinWheelDashboardScreen,
      page: () => SpinWheelDashboardScreen(),
      bindings: [SpinWheelDashboardBinding()],
    ),
    GetPage(
      name: naradMoneyRainPromotionScreen,
      page: () => NaradMoneyRainPromotionScreen(),
      bindings: [NaradMoneyRainPromotionBinding()],
    ),
    GetPage(
      name: moneyRainGamingAppScreen,
      page: () => MoneyRainGamingAppScreen(),
      bindings: [MoneyRainGamingAppBinding()],
    ),
    GetPage(
      name: spinReferralBonusModalScreen,
      page: () => SpinReferralBonusModalScreen(),
      bindings: [SpinReferralBonusModalBinding()],
    ),
    GetPage(
      name: luckySpinInvitationGuideScreen,
      page: () => LuckySpinInvitationGuideScreen(),
      bindings: [LuckySpinInvitationGuideBinding()],
    ),
    GetPage(
      name: gamingMoneyRainPromotionScreen,
      page: () => GamingMoneyRainPromotionScreen(),
      bindings: [GamingMoneyRainPromotionBinding()],
    ),
    GetPage(
      name: jeet98SpinWheelBonusScreen,
      page: () => Jeet98SpinWheelBonusScreen(),
      bindings: [Jeet98SpinWheelBonusBinding()],
    ),
    GetPage(
      name: spinPhoneVerificationScreen,
      page: () => PhoneVerificationScreen(),
      bindings: [PhoneVerificationBinding()],
    ),
    GetPage(
      name: withdrawalHistoryScreen,
      page: () => WithdrawalHistoryScreen(),
      bindings: [WithdrawalHistoryBinding()],
    ),
    GetPage(
      name: withdrawalHistoryEmptyScreen,
      page: () => WithdrawalHistoryEmptyScreen(),
      bindings: [WithdrawalHistoryEmptyBinding()],
    ),
    GetPage(
      name: spinGameRulesModalScreen,
      page: () => SpinGameRulesModalScreen(),
      bindings: [SpinGameRulesModalBinding()],
    ),
    GetPage(
      name: jetBetCasinoHomeScreen,
      page: () => JetBetCasinoHomeScreen(),
      bindings: [JetBetCasinoHomeBinding()],
    ),

    // Deposit Payment Module Pages
    GetPage(
      name: jeetbajiGamingHomeScreen,
      page: () => JeetbajiGamingHomeScreen(),
      bindings: [JeetbajiGamingHomeBinding()],
    ),
    GetPage(
      name: naradGamingHubHomeScreen,
      page: () => NaradGamingHubHomeScreen(),
      bindings: [NaradGamingHubHomeBinding()],
    ),
    GetPage(
      name: gCashDepositDetailScreen,
      page: () => GCashDepositDetailScreen(),
      bindings: [GCashDepositDetailBinding()],
    ),
    GetPage(
      name: gCashDepositRejectionDetailScreen,
      page: () => GCashDepositRejectionDetailScreen(),
      bindings: [GCashDepositRejectionDetailBinding()],
    ),
    GetPage(
      name: depositRecordListScreen,
      page: () => DepositRecordListScreen(),
      bindings: [DepositRecordListBinding()],
    ),
    GetPage(
      name: depositConfirmationScreen,
      page: () => DepositConfirmationScreen(),
      bindings: [DepositConfirmationBinding()],
    ),
    GetPage(
      name: walletDepositConfirmationScreen,
      page: () => WalletDepositConfirmationScreen(),
      bindings: [WalletDepositConfirmationBinding()],
    ),
    GetPage(
      name: walletDepositScreen,
      page: () => WalletDepositScreen(),
      bindings: [WalletDepositBinding()],
    ),
    GetPage(
      name: paymentStatusScreen,
      page: () => PaymentStatusScreen(),
      bindings: [PaymentStatusBinding()],
    ),
    GetPage(
      name: jBet88DepositBonusScreen,
      page: () => JBet88DepositBonusScreen(),
      bindings: [JBet88DepositBonusBinding()],
    ),
    GetPage(
      name: walletDepositAmountScreen,
      page: () => WalletDepositAmountScreen(),
      bindings: [WalletDepositAmountBinding()],
    ),
    GetPage(
      name: depositRecordMethodFilterScreen,
      page: () => DepositRecordMethodFilterScreen(),
      bindings: [DepositRecordMethodFilterBinding()],
    ),
    GetPage(
      name: depositRecordTimeFilterScreen,
      page: () => DepositRecordTimeFilterScreen(),
      bindings: [DepositRecordTimeFilterBinding()],
    ),
    GetPage(
      name: walletDepositPaymentScreen,
      page: () => WalletDepositPaymentScreen(),
      bindings: [WalletDepositPaymentBinding()],
    ),
    GetPage(
      name: depositTransactionConfirmationScreen,
      page: () => DepositTransactionConfirmationScreen(),
      bindings: [DepositTransactionConfirmationBinding()],
    ),
    GetPage(
      name: jBet88DepositPromotionScreen,
      page: () => JBet88DepositPromotionScreen(),
      bindings: [JBet88DepositPromotionBinding()],
    ),
    GetPage(
      name: naradGamingCasinoHomeScreen,
      page: () => NaradGamingCasinoHomeScreen(),
      bindings: [NaradGamingCasinoHomeBinding()],
    ),

    // Gaming Withdrawal Module Pages (from app_13)
    GetPage(
      name: spinGameVictoryScreen,
      page: () => SpinGameVictoryScreen(),
      bindings: [SpinGameVictoryBinding()],
    ),
    GetPage(
      name: withdrawalSuccessScreen,
      page: () => WithdrawalSuccessScreen(),
      bindings: [WithdrawalSuccessBinding()],
    ),
    GetPage(
      name: jetbetGamingHubScreen,
      page: () => JetbetGamingHubScreen(),
      bindings: [JetbetGamingHubBinding()],
    ),
    GetPage(
      name: naradGamingHubHomeScreen,
      page: () => NaradGamingHubHomeScreen(),
      bindings: [NaradGamingHubHomeBinding()],
    ),
    GetPage(
      name: naradCasinoHomeScreen,
      page: () => NaradCasinoHomeScreen(),
      bindings: [NaradCasinoHomeBinding()],
    ),
    GetPage(
      name: spinGameCashWithdrawalScreen,
      page: () => SpinGameCashWithdrawalScreen(),
      bindings: [SpinGameCashWithdrawalBinding()],
    ),
    GetPage(
      name: spinWheelVictoryScreen,
      page: () => SpinWheelVictoryScreen(),
      bindings: [SpinWheelVictoryBinding()],
    ),
    GetPage(
      name: noticeNotificationsScreen,
      page: () => NoticeNotificationsScreen(),
      bindings: [NoticeNotificationsBinding()],
    ),
    GetPage(
      name: withdrawalHelpScreen,
      page: () => WithdrawalHelpScreen(),
      bindings: [WithdrawalHelpBinding()],
    ),
    GetPage(
      name: casinoSpinWinCelebrationScreen,
      page: () => CasinoSpinWinCelebrationScreen(),
      bindings: [CasinoSpinWinCelebrationBinding()],
    ),
    GetPage(
      name: naradCasinoGameHubScreen,
      page: () => NaradCasinoGameHubScreen(),
      bindings: [NaradCasinoGameHubBinding()],
    ),
    GetPage(
      name: naradCasinoGamingPlatformScreen,
      page: () => NaradCasinoGamingPlatformScreen(),
      bindings: [NaradCasinoGamingPlatformBinding()],
    ),
    GetPage(
      name: luckyBonusWithdrawalScreen,
      page: () => LuckyBonusWithdrawalScreen(),
      bindings: [LuckyBonusWithdrawalBinding()],
    ),
    GetPage(
      name: spinGameRewardVictoryScreen,
      page: () => SpinGameRewardVictoryScreen(),
      bindings: [SpinGameRewardVictoryBinding()],
    ),
    GetPage(
      name: gamingWithdrawalConfirmationScreen,
      page: () => GamingWithdrawalConfirmationScreen(),
      bindings: [GamingWithdrawalConfirmationBinding()],
    ),
    GetPage(
      name: referralBonusDialogScreen,
      page: () => ReferralBonusDialogScreen(),
      bindings: [ReferralBonusDialogBinding()],
    ),
    GetPage(
      name: naradGamingPlatformHomeScreen,
      page: () => NaradGamingPlatformHomeScreen(),
      bindings: [NaradGamingPlatformHomeBinding()],
    ),
    GetPage(
      name: noticeEmptyStateScreen,
      page: () => NoticeEmptyStateScreen(),
      bindings: [NoticeEmptyStateBinding()],
    ),

    // Wallet Crypto Module Pages (from app_14)
    GetPage(
      name: walletCryptoLuckySpinWheelGameScreen,
      page: () => LuckySpinWheelGameScreen(),
      bindings: [LuckySpinWheelGameBinding()],
    ),
    GetPage(
      name: walletCryptoCryptoWalletWithdrawalScreen,
      page: () => CryptoWalletWithdrawalScreen(),
      bindings: [CryptoWalletWithdrawalBinding()],
    ),
    GetPage(
      name: walletCryptoWalletWithdrawalTypeSelectionScreen,
      page: () => WalletWithdrawalTypeSelectionScreen(),
      bindings: [WalletWithdrawalTypeSelectionBinding()],
    ),
    GetPage(
      name: walletCryptoBankAccountSettingsScreen,
      page: () => BankAccountSettingsScreen(),
      bindings: [BankAccountSettingsBinding()],
    ),
    GetPage(
      name: walletCryptoCryptoWalletWithdrawalDetailScreen,
      page: () => CryptoWalletWithdrawalDetailScreen(),
      bindings: [CryptoWalletWithdrawalDetailBinding()],
    ),
    GetPage(
      name: walletCryptoUsdtWithdrawalScreen,
      page: () => UsdtWithdrawalScreen(),
      bindings: [UsdtWithdrawalBinding()],
    ),
    GetPage(
      name: walletCryptoGamingAppShareScreen,
      page: () => GamingAppShareScreen(),
      bindings: [GamingAppShareBinding()],
    ),
    GetPage(
      name: walletCryptoJbet88ReferralBonusScreen,
      page: () => Jbet88ReferralBonusScreen(),
      bindings: [Jbet88ReferralBonusBinding()],
    ),
    GetPage(
      name: walletCryptoUsdtWithdrawalFormScreen,
      page: () => UsdtWithdrawalFormScreen(),
      bindings: [UsdtWithdrawalFormBinding()],
    ),
    GetPage(
      name: walletCryptoSpinGamePhoneVerificationScreen,
      page: () => SpinGamePhoneVerificationScreen(),
      bindings: [SpinGamePhoneVerificationBinding()],
    ),
    GetPage(
      name: walletCryptoWalletDepositTypeSelectionScreen,
      page: () => WalletDepositTypeSelectionScreen(),
      bindings: [WalletDepositTypeSelectionBinding()],
    ),
    GetPage(
      name: walletCryptoSpinGameWithdrawalScreen,
      page: () => SpinGameWithdrawalScreen(),
      bindings: [SpinGameWithdrawalBinding()],
    ),
    GetPage(
      name: walletCryptoCryptoWalletPasswordSetupScreen,
      page: () => CryptoWalletPasswordSetupScreen(),
      bindings: [CryptoWalletPasswordSetupBinding()],
    ),
    GetPage(
      name: walletCryptoWalletBankAccountsWithdrawalScreen,
      page: () => WalletBankAccountsWithdrawalScreen(),
      bindings: [WalletBankAccountsWithdrawalBinding()],
    ),
    GetPage(
      name: walletCryptoJbet88ReferralRewardsScreen,
      page: () => Jbet88ReferralRewardsScreen(),
      bindings: [Jbet88ReferralRewardsBinding()],
    ),
    GetPage(
      name: walletCryptoJbet88BenefitsPromotionScreen,
      page: () => Jbet88BenefitsPromotionScreen(),
      bindings: [Jbet88BenefitsPromotionBinding()],
    ),
    GetPage(
      name: walletCryptoTextSafeZoneDisplayScreen,
      page: () => TextSafeZoneDisplayScreen(),
      bindings: [TextSafeZoneDisplayBinding()],
    ),
    GetPage(
      name: walletCryptoElectronicWalletWithdrawalScreen,
      page: () => ElectronicWalletWithdrawalScreen(),
      bindings: [ElectronicWalletWithdrawalBinding()],
    ),
  ];
}
