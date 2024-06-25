import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/helper_functions.dart';
import 'package:wasla_driver/data/requests/create_vehicle_request.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/presentation/common/enums/button_type_enum.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/create_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/widgets/app_bottom_sheet.dart';
import 'package:wasla_driver/presentation/widgets/buttons/loading_button.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({
    super.key,
  });

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  XFile? carXFile;
  File? carFile;
  final ImagePicker picker = ImagePicker();

  final TextEditingController categoryController = TextEditingController();
  final TextEditingController licenseNumberController = TextEditingController();
  final TextEditingController licenseWordController = TextEditingController();
  final TextEditingController capacityController = TextEditingController();
  final TextEditingController brandController = TextEditingController();
  final TextEditingController packageCapacityController =
      TextEditingController();
  final TextEditingController adsSidesNumberController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    categoryController.dispose();
    licenseNumberController.dispose();
    licenseWordController.dispose();
    capacityController.dispose();
    brandController.dispose();
    packageCapacityController.dispose();
    adsSidesNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.leftRight,
      child: AppButton(
          text: AppStrings.addVehicle.tr(),
          svgIconPath: Assets.svgTripLineIcon,
          buttonType: ButtonContentType.iconText,
          matchFontColor: true,
          iconSize: 50,
          onPressed: () {
            Scaffold.of(context).showBottomSheet(
              (context) => MultiBlocProvider(
                providers: BlocProvidersManager.profileProviders,
                child: AppBottomSheet(
                    child: Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      pickVehicleImage(),
                      const VerticalSpace(30),
                      Row(
                        textDirection: TextDirection.ltr,
                        children: [
                          Expanded(
                            child: AppTextFormField(
                              controller: brandController,
                              labelText: AppStrings.vehicleBrand.tr(),
                              svgPrefixPath: Assets.svgBusIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                            ),
                          ),
                          const HorizontalSpace(5),
                          Expanded(
                            child: AppTextFormField(
                              controller: categoryController,
                              labelText: AppStrings.vehicleCategory.tr(),
                              svgPrefixPath: Assets.svgTripLineIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpace(20),
                      Row(
                        textDirection: TextDirection.ltr,
                        children: [
                          Expanded(
                            child: AppTextFormField(
                              controller: capacityController,
                              labelText: AppStrings.vehicleCapacity.tr(),
                              svgPrefixPath: Assets.svgTicketsIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const HorizontalSpace(5),
                          Expanded(
                            child: AppTextFormField(
                              controller: packageCapacityController,
                              labelText: AppStrings.vehiclePackageCapacity.tr(),
                              svgPrefixPath: Assets.svgShippingIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpace(20),
                      Row(
                        children: [
                          Expanded(
                            child: AppTextFormField(
                              controller: licenseWordController,
                              labelText: AppStrings.vehicleLicenseWord.tr(),
                              svgPrefixPath: Assets.svgLicensePlateIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                            ),
                          ),
                          const HorizontalSpace(5),
                          Expanded(
                            child: AppTextFormField(
                              controller: licenseNumberController,
                              labelText: AppStrings.vehicleLicenseNumber.tr(),
                              svgPrefixPath: Assets.svgLicensePlateIcon,
                              textInputAction: TextInputAction.next,
                              textDirection: TextDirection.ltr,
                              textCapitalization: TextCapitalization.words,
                              validator: validateNotEmpty,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpace(30),
                      BlocBuilder<CreateVehicleCubit, CreateVehicleState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              loading: () => LoadingButton.loading(),
                              orElse: () => LoadingButton(
                                    text: AppStrings.addVehicle.tr(),
                                    svgIconPath: Assets.svgTripLineIcon,
                                    buttonType: ButtonContentType.iconText,
                                    matchFontColor: true,
                                    iconSize: 50,
                                    onPressed: () {
                                      if (formKey.currentState?.validate() ==
                                              true &&
                                          carFile != null) {
                                        context
                                            .read<CreateVehicleCubit>()
                                            .createVehicle(
                                                createVehicleRequest:
                                                    CreateVehicleRequest(
                                              category: categoryController.text,
                                              licenseNumber:
                                                  licenseNumberController.text,
                                              licenseWord:
                                                  licenseWordController.text,
                                              capacity: capacityController.text,
                                              brand: brandController.text,
                                              packageCapacity:
                                                  packageCapacityController
                                                      .text,
                                              adsSidesNumber: '0',
                                              image: carFile!,
                                            ));
                                      }
                                    },
                                  ));
                        },
                      )
                    ],
                  ),
                )),
              ),
            );
          }),
    );
  }

  StatefulBuilder pickVehicleImage() {
    return StatefulBuilder(builder: (context, setState) {
      return DottedBorder(
        color: ColorsManager.tealPrimary,
        borderType: BorderType.RRect,
        dashPattern: const [6, 10, 2, 4],
        strokeCap: StrokeCap.round,
        padding: const EdgeInsets.all(5),
        radius: const Radius.circular(20),
        child: GestureDetector(
          onTap: () async {
            carXFile = await picker.pickImage(source: ImageSource.gallery);
            if (carXFile != null) {
              carFile = File(carXFile!.path);
              setState(() {});
            }
          },
          child: Container(
            height: 150.h,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                image: carFile != null
                    ? DecorationImage(
                        image: FileImage(carFile!), fit: BoxFit.cover)
                    : null),
            child: carFile == null
                ? Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppSvg(
                          path: Assets.svgTripLineIcon,
                          height: 65,
                        ),
                        Text(AppStrings.vehicleImage.tr())
                      ],
                    ),
                  )
                : null,
          ),
        ),
      );
    });
  }
}
