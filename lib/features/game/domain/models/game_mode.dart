import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_mode.freezed.dart';
// part 'game_mode.g.dart';

@freezed
class GameMode with _$GameMode {
  const factory GameMode({
    required String id,
    required String title,
    required String description,
    required String iconUrl,
    required bool isEnabled,
    required GameModeType type,
  }) = _GameMode;

  // factory GameMode.fromJson(Map<String, dynamic> json) => _$GameModeFromJson(json);
}

enum GameModeType {
  pvp,
  pvai,
  practice,
  challenge,
  tournament
}
