import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.loading() = _Loading;
  const factory GameState.loaded({
    required List<GameMode> modes,
    required GameModeType selectedMode,
  }) = _Loaded;
  const factory GameState.error(String message) = _Error;
}

@freezed
class GameMode with _$GameMode {
  const factory GameMode({
    required String id,
    required String title,
    required String description,
    required String iconUrl,
    required GameModeType type,
    @Default(true) bool isEnabled,
    String? lottieUrl,
  }) = _GameMode;

}

enum GameModeType {
  @JsonValue('pvp')
  pvp,
  @JsonValue('ai')
  ai,
  @JsonValue('practice')
  practice,
  @JsonValue('leaderboard')
  leaderboard,
  @JsonValue('tournament')
  tournament,
}
