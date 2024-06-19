// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/constants/app_constants.dart';
import '../../../config/styles/colors/app_colors.dart';
import '../../../config/styles/decorations/app_decorations.dart';
import '../../../config/styles/text_styles/app_text_styles.dart';
import '../../utils/validation/validation_builder.dart';
import '../animated_expand.dart';
import '../animated_text.dart';
import '../custom_button.dart';

part 'custom_text_field_error.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.autocorrect = true,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.initialText,
    this.inputFormatters,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.mobileInput = false,
    this.onChanged,
    this.textInputAction,
    this.validator,
    this.expands = false,
    this.minLines = 1,
    this.maxLines = 1,
  }) : super(key: key);

  final bool autocorrect;
  final AutovalidateMode autovalidateMode;
  final String? initialText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool mobileInput;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final ValidationRuleCallback? validator;
  final int? minLines;
  final int? maxLines;
  final bool expands;
  final TextEditingController controller;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // late TextEditingController controller = TextEditingController(
  //   text: widget.initialText,
  // );

  late bool obscureText = widget.obscureText;
  bool hasFocus = false;
  late bool hasText = widget.controller.text.isNotEmpty;
  bool hadFirstFocus = false;
  bool forcedValidation = false;

  bool get isValid => widget.validator?.call(widget.controller.text, context) == null;

  bool get showError {
    if (forcedValidation && !isValid) {
      return true;
    }
    switch (widget.autovalidateMode) {
      case AutovalidateMode.always:
        return !isValid;
      case AutovalidateMode.onUserInteraction:
        return !isValid && hadFirstFocus;
      case AutovalidateMode.disabled:
        return false;
    }
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(textEditingControllerListener);
  }

  @override
  void dispose() {
    widget.controller
      ..removeListener(textEditingControllerListener)
      ..dispose();
    super.dispose();
  }

  void focusNodeListener() {
    setState(() {
      if (!hasFocus) {
        hadFirstFocus = true;
      }
    });
  }

  void textEditingControllerListener() {
    setState(() => hasText = widget.controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autocorrect: widget.autocorrect,
            controller: widget.controller,
            decoration: AppDecorations.input
                .standard(
                  isValid: !showError || isValid,
                  labelText: widget.labelText,
                )
                .copyWith(
                  suffixIcon: widget.obscureText
                      ? Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 6.0,
                            ),
                            child: IntrinsicWidth(
                              child: widget.mobileInput ? _buildShowMobileButton() : _buildShowObsureTextButton(),
                            ),
                          ),
                        )
                      : null,
                ),
            inputFormatters: widget.inputFormatters,
            keyboardType: widget.keyboardType,
            obscureText: obscureText,
            onChanged: widget.onChanged,
            style: AppTextStyles.h6().copyWith(
              fontWeight: FontWeight.normal,
            ),
            expands: widget.expands,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            validator: (text) {
              setState(
                () => forcedValidation = true,
              );
              return widget.validator?.call(text, context);
            },
          ),
          _CustomTextFieldError(
            error: showError
                ? widget.validator?.call(widget.controller.text, context)
                : null,
          ),
        ],
      );

  Widget _buildShowObsureTextButton() => CustomButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        onPressed: () => setState(
          () => obscureText = !obscureText,
        ),
        padding: EdgeInsets.zero,
        child: AnimatedSwitcher(
          duration: AppConstants.animation.defaultDuration,
          child: showError
              ? obscureText
                  ? const Icon(
                      Icons.remove_red_eye_outlined,
                      key: ValueKey<int>(0),
                      color: AppColors.text,
                    )
                  : const Icon(
                      Icons.remove_red_eye,
                      key: ValueKey<int>(1),
                      color: AppColors.red,
                    )
              : obscureText
                  ? const Icon(
                      Icons.remove_red_eye_outlined,
                      key: ValueKey<int>(2),
                      color: AppColors.text,
                    )
                  : const Icon(
                      Icons.remove_red_eye,
                      key: ValueKey<int>(3),
                      color: AppColors.black,
                    ),
        ),
      );

  Widget _buildShowMobileButton() {
    final screenHeight = MediaQuery.of(context).size.height;
    return CustomButton(
    onPressed: () => setState(
          () => obscureText = !obscureText,
    ),
    padding: EdgeInsets.zero,
    child: AnimatedSwitcher(
      duration: AppConstants.animation.defaultDuration,
      child: Row(
            children: [
              Image.asset(
                "assets/icon/flag.png",
                height: screenHeight * .03,
              ),
              const Icon(
        Icons.arrow_drop_down_rounded,
        key: ValueKey<int>(0),
        color: AppColors.text,
      ),
            ],
          )
    ),
  );
  }
}
