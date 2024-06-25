// class AppSwitchButton extends StatefulWidget {
//   const AppSwitchButton({super.key});
//
//   @override
//   State<AppSwitchButton> createState() => _AppSwitchButtonState();
// }
//
// class _AppSwitchButtonState extends State<AppSwitchButton> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoSwitch(
//       value: context.read<TripsHistoryCubit>().filterByDate,
//       activeColor: ColorsManager.tealPrimary800,
//       onLabelColor: ColorsManager.twine,
//       thumbColor: context.read<TripsHistoryCubit>().filterByDate
//           ? ColorsManager.offWhite300
//           : ColorsManager.tealPrimary800,
//       trackColor: ColorsManager.tealPrimary1000,
//       onChanged: (val) {
//         setState(() {
//           context.read<TripsHistoryCubit>().filterByDate = val;
//           if (!val) {
//             datePicker = null;
//             tripCubit.getTripsHistory();
//           }
//           setState(() {
//             _opacity = _opacity == 0.0 ? 1.0 : 0.0;
//           });
//         });
//       },
//     );
//   }
// }
