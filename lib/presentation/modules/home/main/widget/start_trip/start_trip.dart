import 'package:flutter/cupertino.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/create_trip_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/start_trip/from_to/from_to_inputs_section.dart';
import 'package:wasla_driver/presentation/widgets/app_toast.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class StartTripContent extends StatefulWidget {
  const StartTripContent({
    super.key,
  });

  @override
  State<StartTripContent> createState() => _StartTripContentState();
}

class _StartTripContentState extends State<StartTripContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slideAnimation;

  DateTime? selectedStartDateTime;
  DateTime? selectedEndDateTime;
  bool active = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: DurationManager.s4);
    slideAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutBack,
    ));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration:
            buildSectionDecoration(color: ColorsManager.darkTealBackground3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FromToInputsSection(),
            VerticalSpace(15),
            buildTripDateTimePickeres(),
            VerticalSpace(15),
            buildActivateTrip(),
            VerticalSpace(15),
            AppButton(
                height: 30,
                width: 140,
                text: AppStrings.startTrip.tr(),
                onPressed: () {})
          ],
        ),
      ),
    );
  }

  Padding buildActivateTrip() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.readyForTrip.tr(),
                  style: getExtraBoldStyle(fontSize: 20),
                ),
                Text(
                  AppStrings.readyForTripDescription.tr(),
                  style: getMediumStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<CreateTripCubit, CreateTripState>(
              listener: (context, state) {
                state.whenOrNull(
                  createTripSuccess: () => showAppToast('تم انشاء رحلتك'),
                  createTripError: (message) => showAppToast(message),
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => LoadingIndicator(
                          width: 30,
                        ),
                    orElse: () => CupertinoSwitch(
                          value: active,
                          activeColor: ColorsManager.tealPrimary800,
                          onLabelColor: ColorsManager.twine,
                          thumbColor: active
                              ? ColorsManager.offWhite300
                              : ColorsManager.tealPrimary800,
                          trackColor: ColorsManager.tealPrimary1000,
                          onChanged: (val) {
                            setState(() {
                              active = val;
                            });
                            if (selectedStartDateTime != null &&
                                selectedEndDateTime != null) {
                              context.read<CreateTripCubit>().createTrip(
                                    startTime: _formatDateTimeForServer(
                                        selectedStartDateTime!),
                                    endTime: _formatDateTimeForServer(
                                        selectedEndDateTime!),
                                  );
                            }
                          },
                        ));
              },
            ),
          )
        ],
      ),
    );
  }

  Container buildTripDateTimePickeres() {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: buildSectionDecoration(color: ColorsManager.offWhite),
      child: Column(
        children: [
          buildPickerItem(
              buttonName: AppStrings.tripStart.tr(),
              dateTime: _formatDateTimeForUx(selectedStartDateTime),
              onPressed: () async => await _pickDateTime(start: true)),
          buildPickerItem(
              buttonName: AppStrings.tripEnd.tr(),
              dateTime: _formatDateTimeForUx(selectedEndDateTime),
              onPressed: () async => await _pickDateTime(start: false)),
        ],
      ),
    );
  }

  Row buildPickerItem(
      {required String buttonName,
      required String dateTime,
      required VoidCallback onPressed}) {
    return Row(
      children: [
        AppButton.dark(
          width: 100,
          fontSize: 14,
          height: 30,
          onPressed: onPressed,
          text: buttonName,
        ),
        HorizontalSpace(5),
        Flexible(
          child: Text(
            dateTime,
            style: getMediumStyle(color: ColorsManager.twine, fontSize: 18),
          ),
        )
      ],
    );
  }

  Future<void> _pickDateTime({required bool start}) async {
    // Pick the date
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Pick the time
      final TimeOfDay? pickedTime = await showTimePicker(
        initialTime: TimeOfDay.now(),
        context: context,
      );

      if (pickedTime != null) {
        setState(() {
          if (start) {
            selectedStartDateTime = DateTime(
              pickedDate.year,
              pickedDate.month,
              pickedDate.day,
              pickedTime.hour,
              pickedTime.minute,
            );
            _formatDateTimeForServer(selectedStartDateTime!);
          } else {
            selectedEndDateTime = DateTime(
              pickedDate.year,
              pickedDate.month,
              pickedDate.day,
              pickedTime.hour,
              pickedTime.minute,
            );
            _formatDateTimeForServer(selectedEndDateTime!);
          }
        });
      }
    }
  }

  String _formatDateTimeForServer(DateTime dateTime) {
    final DateFormat formatter = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS'Z'");
    PrintManager.print(formatter.format(dateTime.toUtc()));
    return formatter.format(dateTime.toUtc());
  }

  String _formatDateTimeForUx(DateTime? dateTime) {
    if (dateTime == null) return '';
    final DateFormat dateFormatter = DateFormat.yMMMMd().add_jm();

    return dateFormatter.format(dateTime);
  }
}
