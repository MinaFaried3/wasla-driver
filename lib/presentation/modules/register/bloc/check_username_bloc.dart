import 'dart:async';

import 'package:stream_transform/stream_transform.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';

part 'check_username_bloc.freezed.dart';
part 'check_username_event.dart';
part 'check_username_state.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (Stream<Event> events, Stream<Event> Function(Event) mapper) =>
      events.debounce(duration).switchMap(mapper);
}

class CheckUsernameBloc extends Bloc<CheckUsernameEvent, CheckUsernameState> {
  final PublicDriverRepository remoteDataSource;

  CheckUsernameBloc(this.remoteDataSource)
      : super(const CheckUsernameState.initial()) {
    on<CheckUsernameEvent>(_checkUserName,
        transformer: debounce(DurationManager.m500));
  }

  bool valid = false;

  FutureOr<void> _checkUserName(
      CheckUsernameEvent event, Emitter<CheckUsernameState> emit) async {
    await event.when(check: (username) async {
      valid = false;
      //loading
      emit(const CheckUsernameState.loading());

      if (username.isEmpty) {
        emit(const CheckUsernameState.notValid(AppStrings.cannotBeEmpty));
        return;
      }

      if (!_validateRegex(username)) {
        emit(const CheckUsernameState.notValid(AppStrings.usernameNotValid));
        return;
      }

      final result = await remoteDataSource.checkUsername(username);

      result.fold(
        (failure) {
          emit(CheckUsernameState.error(failure));
        },
        (checkUsernameModel) {
          if (checkUsernameModel.valid == true) {
            valid = true;
            emit(const CheckUsernameState.valid());
          } else {
            emit(CheckUsernameState.notValid(
                checkUsernameModel.message.orEmpty()));
          }
        },
      );
    });
  }

  bool _validateRegex(String username) {
    return AppConstants.usernameRegEx.hasMatch(username);
  }
}
