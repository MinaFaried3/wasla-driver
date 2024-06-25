import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/widgets/list_tile.dart';

class PriceAndSeat extends StatelessWidget {
  const PriceAndSeat({
    super.key,
    required this.price,
    required this.seat,
  });

  final int? price, seat;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppListTile(
          tittle: seat.orZero().toString(),
          iconPath: AssetsProvider.ticketsIcon,
          iconSize: 30.sp,
          iconColor: ColorsManager.tealPrimary200,
          fontSize: 18.sp,
          style: getBoldStyle(),
        ),
        AppListTile(
          tittle: price.orZero().toString(),
          iconPath: AssetsProvider.priceIcon,
          iconSize: 30.sp,
          iconColor: ColorsManager.tealPrimary200,
          fontSize: 18.sp,
          style: getBoldStyle(),
        ),
      ],
    );
  }
}
