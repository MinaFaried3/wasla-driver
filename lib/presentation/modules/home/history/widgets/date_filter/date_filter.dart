import 'package:flutter/cupertino.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/cubit/trips_history_cubit.dart';
import 'package:wasla_driver/presentation/widgets/date_picker/date_picker.dart';
import 'package:wasla_driver/presentation/widgets/section/section_with_tittle.dart';

class DateFilter extends StatefulWidget {
  const DateFilter({super.key});

  @override
  State<DateFilter> createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  Widget? datePicker;
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    var tripCubit = context.read<TripsHistoryCubit>();
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SectionWithTitle(
          tittle: AppStrings.filterByDate.tr(),
          iconPath: Assets.svgCalendarIcon,
          content: AnimatedContainer(
            duration: DurationManager.m500,
            onEnd: () => onClickEffectEnded(context, tripCubit),
            height: tripCubit.filterByDate ? 150.h : 0,
            child: AnimatedOpacity(
                duration: DurationManager.s2,
                opacity: _opacity,
                child: datePicker),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoSwitch(
              value: context.read<TripsHistoryCubit>().filterByDate,
              activeColor: ColorsManager.tealPrimary800,
              onLabelColor: ColorsManager.twine,
              thumbColor: context.read<TripsHistoryCubit>().filterByDate
                  ? ColorsManager.offWhite300
                  : ColorsManager.tealPrimary800,
              trackColor: ColorsManager.tealPrimary1000,
              onChanged: (val) {
                setState(() {
                  context.read<TripsHistoryCubit>().filterByDate = val;
                  if (!val) {
                    datePicker = null;
                    tripCubit.getTripsHistory();
                  }
                  setState(() {
                    _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                  });
                });
              },
            )),
      ],
    );
  }

  void onClickEffectEnded(BuildContext context, TripsHistoryCubit tripCubit) {
    datePicker = context.read<TripsHistoryCubit>().filterByDate
        ? buildDatePicker(tripCubit, context)
        : null;
    setState(() {});
  }

  Widget buildDatePicker(TripsHistoryCubit tripCubit, BuildContext context) {
    return DatePicker(
      tripCubit.oldestDate!,
      height: 140.h,
      width: 80.w,
      onDateChange: (dateTime) {
        tripCubit.filteredDate = dateTime;
        tripCubit.getTripsHistory();
      },
      directionality: Directionality.of(context),
      daysCount: DateTime.now().difference(tripCubit.oldestDate!).inDays,
      locale: Localizations.localeOf(context).toString(),
      dateTextStyle:
          getBoldStyle(color: ColorsManager.tealPrimary300, fontSize: 20.sp),
      dayTextStyle:
          getRegularStyle(color: ColorsManager.tealPrimary700, fontSize: 14.sp),
      monthTextStyle:
          getRegularStyle(color: ColorsManager.tealPrimary700, fontSize: 14.sp),
      selectionColor: ColorsManager.tealPrimary900,
      selectedTextColor: ColorsManager.tealPrimary300,
      deactivatedColor: ColorsManager.tealPrimary1000,
    );
  }
}
