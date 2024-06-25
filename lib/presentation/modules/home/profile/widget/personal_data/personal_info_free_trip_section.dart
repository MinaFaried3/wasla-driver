import 'package:cached_network_image/cached_network_image.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/personal_data/personal_info.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';
import 'package:wasla_driver/presentation/widgets/section/section_with_tittle.dart';

class PersonalInfoAndLicense extends StatelessWidget {
  const PersonalInfoAndLicense({
    super.key,
    required this.id,
    required this.phone,
    required this.email,
    required this.birthdate,
    required this.maleOrFemale,
    required this.licenseImage,
    required this.licenseNum,
  });

  final String id;
  final String licenseImage;
  final String licenseNum;
  final String phone;
  final String email;
  final String birthdate;
  final String maleOrFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalInfo(
          license: id,
          phone: phone,
          email: email,
          birthdate: birthdate,
          maleOrFemale: maleOrFemale,
        ),
        SectionWithTitle(
          tittle: AppStrings.licenseImage.tr(),
          iconPath: AssetsProvider.idIcon,
          content: Container(
            padding: const EdgeInsets.all(8),
            decoration: buildSectionDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl: licenseImage,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: SelectableText(
                      "${AppStrings.licenseNum.tr()} : $licenseNum",
                      style: getBoldStyle(color: ColorsManager.calico),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
