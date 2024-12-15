import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.8),
              Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Statistics',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),

              // Stats Overview
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    // Performance Card
                    _buildStatsCard(
                      context,
                      'Performance Overview',
                      [
                        _StatItem(
                          icon: Icons.stars,
                          label: 'Total Score',
                          value: '12,450',
                        ),
                        _StatItem(
                          icon: Icons.emoji_events,
                          label: 'Battles Won',
                          value: '47',
                        ),
                        _StatItem(
                          icon: Icons.timeline,
                          label: 'Win Rate',
                          value: '76%',
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Language Progress
                    _buildStatsCard(
                      context,
                      'Language Progress',
                      [
                        _StatItem(
                          icon: Icons.chat_bubble,
                          label: 'Vocabulary',
                          value: '85%',
                          showProgress: true,
                          progress: 0.85,
                        ),
                        _StatItem(
                          icon: Icons.architecture,
                          label: 'Grammar',
                          value: '70%',
                          showProgress: true,
                          progress: 0.7,
                        ),
                        _StatItem(
                          icon: Icons.record_voice_over,
                          label: 'Speaking',
                          value: '60%',
                          showProgress: true,
                          progress: 0.6,
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Recent Activity
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recent Activity',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),
                            _buildActivityItem(
                              context,
                              'Won PvP Battle',
                              'Score: 350',
                              '2h ago',
                            ),
                            _buildActivityItem(
                              context,
                              'Completed Daily Challenge',
                              'Earned: 200 points',
                              '5h ago',
                            ),
                            _buildActivityItem(
                              context,
                              'New Achievement',
                              'First Win Streak',
                              '1d ago',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsCard(BuildContext context, String title, List<_StatItem> items) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ...items.map((item) => _buildStatItem(context, item)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, _StatItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(item.icon),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                if (item.showProgress) ...[
                  const SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: item.progress,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 16),
          Text(
            item.value,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
    BuildContext context,
    String title,
    String subtitle,
    String time,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Text(
            time,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _StatItem {
  final IconData icon;
  final String label;
  final String value;
  final bool showProgress;
  final double progress;

  _StatItem({
    required this.icon,
    required this.label,
    required this.value,
    this.showProgress = false,
    this.progress = 0,
  });
}
