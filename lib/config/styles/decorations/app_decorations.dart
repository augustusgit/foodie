// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../dimensions/app_dimensions.dart';
import '../text_styles/app_text_styles.dart';

part 'app_decorations_button.dart';
part 'app_decorations_input.dart';

class AppDecorations {
  const AppDecorations._();

  static const _Button button = _Button();
  static const _Input input = _Input();
}
