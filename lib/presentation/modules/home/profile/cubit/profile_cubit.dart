import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/PublicDriverProfileResponse.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());
  final PublicDriverRepository repository = getIt<PublicDriverRepository>();

  void getProfile() async {
    emit(const ProfileState.loading());

    final result = await repository.getPublicDriverProfile();
    result.fold(
        (l) => emit(ProfileState.getProfileFailure(message: l.message)),
        (r) => emit(ProfileState.getProfileSuccess(
              profileModel: r,
            )));
  }
}
