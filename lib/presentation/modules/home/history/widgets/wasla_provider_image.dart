import 'package:wasla_driver/app/shared/common/common_libs.dart';

class WaslaProviderImage extends StatelessWidget {
  const WaslaProviderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 80),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsProvider.logoIcon,
            height: 40,
          ),
          const HorizontalSpace(5),
          Image.asset(
            AssetsProvider.logoTypo,
            height: 20,
          ),
        ],
      ),
    );
  }
}
