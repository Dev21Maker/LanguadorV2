import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/auth/login_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/battle/battle_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/stats/stats_screen.dart';
import '../screens/game/pvp_screen.dart';
import '../screens/game/ai_screen.dart';
import '../screens/game/practice_screen.dart';
import '../screens/game/leaderboard_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/battle',
      builder: (context, state) => const BattleScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/stats',
      builder: (context, state) => const StatsScreen(),
    ),
    GoRoute(
      path: '/game/pvp',
      builder: (context, state) => const PvPScreen(),
    ),
    GoRoute(
      path: '/game/ai',
      builder: (context, state) => const AIScreen(),
    ),
    GoRoute(
      path: '/game/practice',
      builder: (context, state) => const PracticeScreen(),
    ),
    GoRoute(
      path: '/leaderboard',
      builder: (context, state) => const LeaderboardScreen(),
    ),
  ],
);
