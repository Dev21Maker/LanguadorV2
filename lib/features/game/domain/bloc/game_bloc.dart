import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'game_state.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(const GameState.initial()) {
    on<GameEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const GameState.loading());
          try {
            final modes = [
              GameMode(
                id: 'pvp',
                title: 'PvP Battle',
                description: 'Challenge other players in real-time matches',
                iconUrl: 'https://assets5.lottiefiles.com/packages/lf20_jvfzjpmd.json',
                type: GameModeType.pvp,
                lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_jvfzjpmd.json',
              ),
              GameMode(
                id: 'ai',
                title: 'AI Practice',
                description: 'Train with our advanced AI opponent',
                iconUrl: 'https://assets5.lottiefiles.com/packages/lf20_yg3qg3qj.json',
                type: GameModeType.ai,
                lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_yg3qg3qj.json',
              ),
              GameMode(
                id: 'practice',
                title: 'Quick Practice',
                description: 'Practice at your own pace',
                iconUrl: 'https://assets5.lottiefiles.com/packages/lf20_kcsr6fcp.json',
                type: GameModeType.practice,
                lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_kcsr6fcp.json',
              ),
              GameMode(
                id: 'leaderboard',
                title: 'Leaderboard',
                description: 'Check your ranking and achievements',
                iconUrl: 'https://assets5.lottiefiles.com/packages/lf20_touohxv0.json',
                type: GameModeType.leaderboard,
                lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_touohxv0.json',
              ),
              GameMode(
                id: 'tournament',
                title: 'Tournament',
                description: 'Compete in organized tournaments',
                iconUrl: 'https://assets5.lottiefiles.com/packages/lf20_tq0qkgns.json',
                type: GameModeType.tournament,
                lottieUrl: 'https://assets5.lottiefiles.com/packages/lf20_tq0qkgns.json',
                isEnabled: false,
              ),
            ];
            emit(GameState.loaded(
              modes: modes,
              selectedMode: GameModeType.pvp,
            ));
          } catch (e) {
            emit(GameState.error(e.toString()));
          }
        },
        selectMode: (GameModeType type) async {
          state.maybeWhen(
            loaded: (modes, _) {
              emit(GameState.loaded(
                modes: modes,
                selectedMode: type,
              ));
            },
            orElse: () {},
          );
        },
        refresh: () async {
          emit(const GameState.loading());
          add(const GameEvent.started());
        },
      );
    });
  }
}
