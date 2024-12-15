import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../features/game/domain/bloc/game_bloc.dart';
import '../../features/game/domain/bloc/game_state.dart';

class GameModeCard extends StatelessWidget {
  const GameModeCard({
    required this.mode,
    required this.isSelected,
    required this.isPrimary,
  });

  final GameMode mode;
  final bool isSelected;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: isPrimary ? 2 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isSelected
            ? BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        )
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: mode.isEnabled
            ? () {
          context.read<GameBloc>().add(GameEvent.selectMode(mode.type));
          // Navigate to the game mode
          switch (mode.type) {
            case GameModeType.pvp:
              context.pushReplacement('/battle');
              break;
            case GameModeType.ai:
              context.go('/game/ai');
              break;
            case GameModeType.practice:
              context.go('/game/practice');
              break;
            case GameModeType.leaderboard:
              context.go('/leaderboard');
              break;
            case GameModeType.tournament:
            // Tournament mode is currently disabled
              break;
          }
        }
            : null,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: _GameModeAnimation(
                    mode: mode,
                    isPrimary: isPrimary,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mode.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isPrimary
                                ? Theme.of(context).colorScheme.primary
                                : null,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          mode.description,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color:
                            Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (!mode.isEnabled)
              Positioned.fill(
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 32,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Coming Soon',
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}



class _GameModeAnimation extends StatelessWidget {
  const _GameModeAnimation({
    required this.mode,
    required this.isPrimary,
  });

  final GameMode mode;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: isPrimary
          ? Theme
          .of(context)
          .colorScheme
          .primaryContainer
          : Theme
          .of(context)
          .colorScheme
          .surfaceVariant,
      child: mode.lottieUrl != null
          ? LottieBuilder.network(
        mode.lottieUrl!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return _buildFallbackIcon(context);
        },
        frameBuilder: (context, child, composition) {
          if (composition == null) {
            return _buildLoadingIndicator(context);
          }
          return child;
        },
      )
          : _buildFallbackIcon(context),
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: isPrimary
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
  
  Widget _buildFallbackIcon(BuildContext context) {
    IconData icon;
    switch (mode.type) {
      case GameModeType.pvp:
        icon = Icons.people_outline;
        break;
      case GameModeType.ai:
        icon = Icons.smart_toy_outlined;
        break;
      case GameModeType.practice:
        icon = Icons.school_outlined;
        break;
      case GameModeType.leaderboard:
        icon = Icons.leaderboard_outlined;
        break;
      case GameModeType.tournament:
        icon = Icons.emoji_events_outlined;
        break;
    }

    return Center(
      child: Icon(
        icon,
        size: 48,
        color: isPrimary
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}