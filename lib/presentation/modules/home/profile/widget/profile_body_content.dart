import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/enums/gender.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/get_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/profile_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/header/profile_header.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/personal_data/personal_info_free_trip_section.dart';
import 'package:wasla_driver/presentation/widgets/animation/slidable_widget.dart';
import 'package:wasla_driver/presentation/widgets/retry.dart';

class ProfileBodyContent extends StatefulWidget {
  const ProfileBodyContent({super.key});

  @override
  State<ProfileBodyContent> createState() => _ProfileBodyContentState();
}

class _ProfileBodyContentState extends State<ProfileBodyContent> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().getProfile();
    context.read<GetVehicleCubit>().getVehicle();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const LoadingIndicator(),
            getProfileFailure: (message) => Retry(
                  onPressed: () => context.read<ProfileCubit>().getProfile(),
                  text: message,
                ),
            getProfileSuccess: (driver) => RefreshIndicator(
                  onRefresh: () async {
                    context.read<ProfileCubit>().getProfile();
                    context.read<GetVehicleCubit>().getVehicle();
                  },
                  child: ListView(
                    children: [
                      const VerticalSpace(20),
                      AppSlidingWidget(
                        duration: DurationManager.s2,
                        child: ProfileHeader(
                            fullName: '${driver.firstName} ${driver.lastName}',
                            photoUrl: driver.photoUrl!,
                            userName: driver.userName!),
                      ),
                      const VerticalSpace(20),
                      AppSlidingWidget(
                        duration: DurationManager.s3,
                        child: PersonalInfoAndLicense(
                          id: driver.id!,
                          phone: driver.phoneNumber.orEmpty(),
                          email: '',
                          birthdate: driver.birthdate ?? "",
                          maleOrFemale: Gender.values[driver.gender!].name,
                          licenseImage: driver.licenseImageUrl!,
                          licenseNum: driver.licenseNum!,
                        ),
                      )
                    ],
                  ),
                ),
            orElse: () => const SizedBox());
      },
    );
  }
}
