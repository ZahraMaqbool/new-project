import 'package:flutter/material.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget(
      {super.key,
      required this.hintAndLabelText,
      required this.keyboardType,
      required this.textEditingController,
      this.onTab,
      this.focusNode});
  final String hintAndLabelText;
  final TextInputType keyboardType;

  final FocusNode? focusNode;
  final TextEditingController textEditingController;

  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      width: width * 0.8,
      child: TextFormField(
        onTap: onTab,
        controller: textEditingController,
        focusNode: focusNode,
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.black54Color,
        cursorRadius: const Radius.circular(10),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          errorMaxLines: 1,
          isDense: true,
          hintText: hintAndLabelText,
          hintStyle: const TextStyle(
            color: AppColors.grayColor,
          ),
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
          ),
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
