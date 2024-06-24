import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/models/CurrentTripResponse.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/accepts_request_cubit.dart';
import 'package:wasla_driver/presentation/widgets/app_toast.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class ListSection extends StatefulWidget {
  const ListSection({
    super.key,
    required this.tittle,
    required this.list,
    this.action,
    required this.tripId,
  });

  final String tittle;
  final List<ReservationModel> list;
  final String tripId;
  final Widget? action;

  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  @override
  Widget build(BuildContext context) {
    double width =
        (MediaQuery.sizeOf(context).width - (2 * AppPadding.fromLR) - 5);
    return SizedBox(
      height: widget.list.length * 300,
      width: width,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 50,
            ),
            decoration: const BoxDecoration(
                color: ColorsManager.offWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Text(
              widget.tittle,
              style: getBoldStyle(
                color: ColorsManager.darkTealBackground3,
                fontSize: 14.sp,
              ),
            ),
          ),
          Positioned(
            top: 35,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: width,
                  decoration: BoxDecoration(
                      color: ColorsManager.darkTealBackground3,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => VerticalSpace(10),
                    itemBuilder: (context, index) {
                      final model = widget.list[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  model.customer!.photoUrl!,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              HorizontalSpace(20),
                              Names(
                                  fullName: model.customer!.fullName!,
                                  username: model.customer!.email!),
                              Spacer(),
                              if (model.onRoad!)
                                Column(
                                  children: [
                                    Text('علي الطريق'),
                                    Container(
                                      decoration: buildSectionDecoration(
                                          color: ColorsManager.red900),
                                      padding: EdgeInsets.all(8),
                                      child: AppSvg(
                                        path: Assets.svgOnOadIcon,
                                        height: 50,
                                      ),
                                    )
                                  ],
                                )
                              else
                                Column(
                                  children: [
                                    Text('من البدايه'),
                                    Container(
                                      decoration: buildSectionDecoration(
                                          color: ColorsManager.offWhite400),
                                      padding: EdgeInsets.all(8),
                                      child: AppSvg(
                                        path: Assets.svgStartEndIcon,
                                        height: 50,
                                        color: ColorsManager.tealPrimary,
                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
                          if (model.onRoad!)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppSvg(
                                  path: Assets.svgLocationIcon,
                                  color: ColorsManager.tealPrimary300,
                                ),
                                Flexible(
                                  child: Text(
                                    model.locationDescription!,
                                    style: getBoldStyle(
                                        fontSize: 18,
                                        color: ColorsManager.tealPrimary300),
                                  ),
                                ),
                                HorizontalSpace(5)
                              ],
                            ),
                          buildActionButton(
                            model.id.toString(),
                          )
                        ],
                      );
                    },
                    itemCount: widget.list.length,
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActionButton(
    String reqeustId,
  ) {
    return BlocListener<AcceptsRequestCubit, AcceptsRequestState>(
      listener: (context, state) {
        state.whenOrNull(
          acceptRequestError: (message) => showAppToast(message),
        );
      },
      child: OutlinedButton(
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            fixedSize: WidgetStatePropertyAll(Size(100, 20)),
          ),
          onPressed: () {
            PrintManager.print(reqeustId);
            context
                .read<AcceptsRequestCubit>()
                .acceptPassengerRequest(reqeustId);
            // context
            //     .read<CurrentPassengersTripsCubit>()
            //     .getCurrentPassengers(widget.tripId);
          },
          child: AppSvg(
            path: AssetsProvider.doneIcon,
            height: 30,
            color: ColorsManager.tealPrimary300,
          )),
    );
  }
}

class Names extends StatelessWidget {
  const Names({
    super.key,
    required this.fullName,
    required this.username,
  });

  final String fullName, username;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fullName.orEmpty(),
          style: getBoldStyle(fontSize: 25),
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
        ),
        VerticalSpace(5),
        Text(
          username.orEmpty().trim(),
          style:
              getLightStyle(fontSize: 12, color: ColorsManager.tealPrimary400),
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
        ),
      ],
    );
  }
}
