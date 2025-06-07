import '../core/app_export.dart';
import 'package:get/get.dart';

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

import '../presentation/shared/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/splash_screen/splash_screen/binding/splash_binding.dart';

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

  // Shared Routes
  static const String splashScreen = '/splash_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

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
  ];
}
