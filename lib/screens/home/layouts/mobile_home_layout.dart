import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../features/game/domain/bloc/game_bloc.dart';
import '../../../features/game/domain/bloc/game_state.dart';
import '../../../features/game/domain/models/game_mode.dart';
// import '../widgets/game_mode_card.dart';
import '../game_mode_card.dart';

class MobileHomeLayout extends StatelessWidget {
  const MobileHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Languador'),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Game Modes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
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
                            isPrimary: true,
                          );
                        },
                        childCount: modes.length,
                      ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
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
      bottomNavigationBar: BottomNavigationBar(items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.games_sharp),
          label: 'Train'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'User'
          )
        ],
      ),
    );
  }
}

