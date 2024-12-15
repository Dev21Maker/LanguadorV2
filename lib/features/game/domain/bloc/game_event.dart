part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = _Started;
  const factory GameEvent.selectMode(GameModeType type) = _SelectMode;
  const factory GameEvent.refresh() = _Refresh;
}
