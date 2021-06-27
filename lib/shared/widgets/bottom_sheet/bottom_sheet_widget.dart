import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secudaryLabel;
  final VoidCallback secudaryOnPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secudaryLabel,
      required this.secudaryOnPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                          text: title,
                          style: AppTextStyles.buttonBoldHeading,
                          children: [
                            TextSpan(
                                text: "\n$subtitle",
                                style: AppTextStyles.buttonHeading),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    SetLabelButton(
                      enablePrimaryColor: true,
                      primaryLabel: primaryLabel,
                      primaryOnPressed: primaryOnPressed,
                      secudaryLabel: secudaryLabel,
                      secudaryOnPressed: secudaryOnPressed,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
