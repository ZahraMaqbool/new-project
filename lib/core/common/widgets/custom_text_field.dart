import 'package:flutter/material.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintAndLabelText,
      required this.keyboardType,
      required this.validator,
      required this.textEditingController,
      this.isReadOnly = false,
      this.isHintTextBold = false,
      this.onTab,
      this.focusNode});
  final String hintAndLabelText;
  final TextInputType keyboardType;
  final FormFieldValidator<String?> validator;
  final FocusNode? focusNode;
  final TextEditingController textEditingController;
  final bool isReadOnly;
  final VoidCallback? onTab;
  final bool isHintTextBold;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return SizedBox(
      width: width * 0.8,
      child: TextFormField(
        onTap: onTab,
        controller: textEditingController,
        focusNode: focusNode,
        validator: validator,
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.buttonBackGround,
        cursorRadius: Radius.circular(10),
        readOnly: isReadOnly,
        decoration: InputDecoration(
          errorMaxLines: 1,
          isDense: true,
          hintText: hintAndLabelText,
          hintStyle: TextStyle(
              color: AppColors.grayColor,
              fontWeight:
                  isHintTextBold == false ? FontWeight.w300 : FontWeight.bold),
          helperText: 'required',
          helperStyle: const TextStyle(color: AppColors.grayColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColors.grayColor, width: 2)),
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.grayColor,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error,
              )),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error, width: 1.5),
          ),
        ),
      ),
    );
  }
}
