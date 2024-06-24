import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/header/name_username.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.fullName,
    required this.photoUrl,
    required this.userName,
  });

  final String fullName;
  final String photoUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildProfileImage(photoUrl),
        HorizontalSpace(15.w),
        NameAndUsername(fullName: fullName, userName: userName),
      ],
    );
  }

  Widget buildProfileImage(String url) {
    double length = 140.h;
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: ColorsManager.tealPrimary, width: 1)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.network(
          width: length,
          height: length,
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
