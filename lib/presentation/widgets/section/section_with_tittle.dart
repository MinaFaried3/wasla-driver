import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/widgets/section/section_title.dart';

class SectionWithTitle extends StatelessWidget {
  const SectionWithTitle({
    super.key,
    required this.tittle,
    required this.content,
    this.enableContentPadding = true,
    this.iconPath,
    this.iconsSize,
  });

  final String tittle;
  final String? iconPath;
  final double? iconsSize;
  final Widget content;
  final bool enableContentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //title
        SectionTitle(
          title: tittle,
          iconPath: iconPath,
          iconSize: iconsSize,
        ),

        //container
        enableContentPadding
            ? Padding(
                padding: const EdgeInsets.only(
                  left: AppPadding.fromLR,
                  right: AppPadding.fromLR,
                  bottom: AppPadding.fromLR,
                ),
                child: content,
              )
            : content,
      ],
    );
  }
}
