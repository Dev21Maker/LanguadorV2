import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../features/game/domain/bloc/game_bloc.dart';
import '../../../features/game/domain/bloc/game_state.dart';
import '../../../features/game/domain/models/game_mode.dart';
// import '../widgets/game_mode_card.dart';
import '../game_mode_card.dart';

class WebHomeLayout extends StatelessWidget {
  const WebHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Navigation Sidebar
          Container(
            width: 250,
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              children: [
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Theme.of(context).colorScheme.primary,
                  child: const Text(
                    'Languador',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  selected: true,
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () => context.go('/profile'),
                ),
                ListTile(
                  leading: const Icon(Icons.bar_chart),
                  title: const Text('Statistics'),
                  onTap: () => context.go('/stats'),
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  elevation: 0,
                  pinned: true,
                  title: const Text('Game Modes'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(32.0),
                  sliver: BlocBuilder<GameBloc, GameState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SliverToBoxAdapter(child: SizedBox()),
                        loading: () => const SliverToBoxAdapter(
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        loaded: (modes, selectedMode) {
                          return SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final mode = modes[index];
                                return GameModeCard(
                                  mode: mode,
                                  isSelected: mode.type == selectedMode,
                                  isPrimary: false,
                                );
                              },
                              childCount: modes.length,
                            ),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.2,
                              crossAxisSpacing: 32,
                              mainAxisSpacing: 32,
                            ),
                          );
                        },
                        error: (message) => SliverToBoxAdapter(
                          child: Center(child: Text('Error: $message')),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
