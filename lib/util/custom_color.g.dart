import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const neutral2 = Color(0xFFDECDC7);


CustomColors lightCustomColors = const CustomColors(
  sourceNeutral2: Color(0xFFDECDC7),
  neutral2: Color(0xFF99461D),
  onNeutral2: Color(0xFFFFFFFF),
  neutral2Container: Color(0xFFFFDBCD),
  onNeutral2Container: Color(0xFF360F00),
);

CustomColors darkCustomColors = const CustomColors(
  sourceNeutral2: Color(0xFFDECDC7),
  neutral2: Color(0xFFFFB597),
  onNeutral2: Color(0xFF581D00),
  neutral2Container: Color(0xFF7B2F06),
  onNeutral2Container: Color(0xFFFFDBCD),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceNeutral2,
    required this.neutral2,
    required this.onNeutral2,
    required this.neutral2Container,
    required this.onNeutral2Container,
  });

  final Color? sourceNeutral2;
  final Color? neutral2;
  final Color? onNeutral2;
  final Color? neutral2Container;
  final Color? onNeutral2Container;

  @override
  CustomColors copyWith({
    Color? sourceNeutral2,
    Color? neutral2,
    Color? onNeutral2,
    Color? neutral2Container,
    Color? onNeutral2Container,
  }) {
    return CustomColors(
      sourceNeutral2: sourceNeutral2 ?? this.sourceNeutral2,
      neutral2: neutral2 ?? this.neutral2,
      onNeutral2: onNeutral2 ?? this.onNeutral2,
      neutral2Container: neutral2Container ?? this.neutral2Container,
      onNeutral2Container: onNeutral2Container ?? this.onNeutral2Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceNeutral2: Color.lerp(sourceNeutral2, other.sourceNeutral2, t),
      neutral2: Color.lerp(neutral2, other.neutral2, t),
      onNeutral2: Color.lerp(onNeutral2, other.onNeutral2, t),
      neutral2Container: Color.lerp(neutral2Container, other.neutral2Container, t),
      onNeutral2Container: Color.lerp(onNeutral2Container, other.onNeutral2Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceNeutral2]
  ///   * [CustomColors.neutral2]
  ///   * [CustomColors.onNeutral2]
  ///   * [CustomColors.neutral2Container]
  ///   * [CustomColors.onNeutral2Container]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceNeutral2: sourceNeutral2!.harmonizeWith(dynamic.primary),
      neutral2: neutral2!.harmonizeWith(dynamic.primary),
      onNeutral2: onNeutral2!.harmonizeWith(dynamic.primary),
      neutral2Container: neutral2Container!.harmonizeWith(dynamic.primary),
      onNeutral2Container: onNeutral2Container!.harmonizeWith(dynamic.primary),
    );
  }
}