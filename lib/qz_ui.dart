library qz_ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:qz_ui/presentation/widgets/appbar/app_bar_search.dart';
import 'package:qz_ui/presentation/widgets/appbar/app_bar_tab.dart';
import 'package:qz_ui/presentation/widgets/appbar/app_bar_widget.dart';
import 'package:qz_ui/presentation/widgets/body/body_responsive.dart';
import 'package:qz_ui/presentation/widgets/cache_image/cache_image_widget.dart';
import 'package:qz_ui/presentation/widgets/divider/divider_vertical_widget.dart';
import 'package:qz_ui/presentation/widgets/form/form_dropdown.dart';
import 'package:qz_ui/presentation/widgets/header/base_header.dart';
import 'package:qz_ui/presentation/widgets/loading/color_loader.dart';
import 'package:qz_ui/presentation/widgets/modal/simple_modal.dart';
import 'package:qz_ui/presentation/widgets/refresh/refresh_widget.dart';
import 'package:qz_ui/presentation/widgets/scaffold/scaffold_custom.dart';
import 'package:qz_ui/presentation/widgets/scaffold/scaffold_primary.dart';
import 'package:qz_ui/presentation/widgets/scaffold/scaffold_search.dart';
import 'package:qz_ui/presentation/widgets/textfield/simple_textfield.dart';

import 'presentation/widgets/button/button_primary.dart';

class QzUI {
  static Widget buttonUI({
    VoidCallback? onTap,
    required String title,
    bool loading = false,
    Color? colorButton,
    Color? colorText,
    bool elevation = false,
    bool isEnabled = true,
    bool isEnabledIcon = false,
    IconData? iconButton,
    Color? colorIcon,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
  }) =>
      ButtonPrimary(
        title: title,
        onTap: onTap,
        loading: loading,
        colorButton: colorButton,
        colorText: colorText,
        elevation: elevation,
        isEnabled: isEnabled,
        isEnabledIcon: isEnabledIcon,
        iconButton: iconButton,
        colorIcon: colorIcon,
        onLongPress: onLongPress,
        onDoubleTap: onDoubleTap,
      );

  static Widget appBarSearch({
    Widget? leading,
    required Widget widgetSearch,
    Color? appBarColor,
    List<Widget>? actions,
  }) =>
      AppBarSearch(
        leading: leading,
        widgetSearch: widgetSearch,
        appBarColor: appBarColor,
        actions: actions,
      );

  static Widget appBarTab({
    required String title,
    Widget? leading,
    required Widget widget,
    PreferredSizeWidget? bottom,
    Color? appBarColor,
    Color? textColor,
  }) =>
      AppBarTab(
        title: title,
        widget: widget,
        leading: leading,
        bottom: bottom,
        appBarColor: appBarColor,
        textColor: textColor,
      );

  static appBarWidget({
    required String title,
    Widget? leading,
    required Widget widget,
    PreferredSizeWidget? bottom,
    Color? appBarColor,
    Color? colorText,
  }) =>
      AppBarWidget(
        title: title,
        widget: widget,
        leading: leading,
        bottom: bottom,
        appBarColor: appBarColor,
        colorText: colorText,
      );

  static Widget responsiveBody({
    bool isTablet = false,
    List<Widget>? children1,
    List<Widget>? children2,
    int? flex1,
    int? flex2,
  }) =>
      ResponsiveBody(
        isTablet: isTablet,
        children1: children1,
        children2: children2,
        flex1: flex1,
        flex2: flex2,
      );

  static Widget cacheImageWidget({
    required String imageUrl,
    Color? iconColor,
    bool isVisibilityError = false,
    BoxFit? boxFit,
    IconData? iconError,
    bool isProduct = false,
    Color? colorLoading,
  }) =>
      CacheImageWidget(
        imageUrl: imageUrl,
        iconColor: iconColor ?? Colors.black,
        isVisibilityError: isVisibilityError,
        boxFit: boxFit,
        iconError: iconError,
        isProduct: isProduct,
        colorLoading: colorLoading,
      );

  static Widget dividerVertical() => const DividerVerticalWidget();

  static Widget formDropdown({
    String? selectedValue,
    required List<DropdownMenuItem<String>> items,
    required String hint,
    required void Function(String?) onChanged,
    Color? color,
  }) =>
      FormDropdown(
        selectedValue: selectedValue,
        items: items,
        hint: hint,
        onChanged: onChanged,
        color: color,
      );

  static Widget baseHeader({
    required List<InlineSpan> children,
    TextAlign textAlign = TextAlign.center,
    bool isPadding = false,
  }) =>
      BaseHeader(
        children: children,
        textAlign: textAlign,
        isPadding: isPadding,
      );

  static Widget colorLoader({
    Color dotOneColor = Colors.black,
    Color dotTwoColor = Colors.black,
    Color dotThreeColor = Colors.black,
    Duration duration = const Duration(milliseconds: 1000),
    DotType dotType = DotType.circle,
    Icon dotIcon = const Icon(
      Icons.blur_on,
    ),
  }) =>
      ColorLoader(
        dotOneColor: dotOneColor,
        dotTwoColor: dotTwoColor,
        dotThreeColor: dotThreeColor,
        duration: duration,
        dotType: dotType,
        dotIcon: dotIcon,
      );

  static Widget simpleModal({
    required String title,
    required String subtitle,
    String backText = 'Voltar',
    String nextText = 'Continuar',
    required Function() backTap,
    required Function() nextTap,
  }) =>
      SimpleModal(
        title: title,
        subtitle: subtitle,
        backText: backText,
        nextText: nextText,
        backTap: backTap,
        nextTap: nextTap,
      );

  static Widget refresh({
    required GlobalKey<RefreshIndicatorState> keyRefresh,
    required Widget child,
    required Future Function() onRefresh,
    Color? color,
  }) =>
      RefreshWidget(
        keyRefresh: keyRefresh,
        onRefresh: onRefresh,
        color: color,
        child: child,
      );

  static Widget scaffoldPrimary({
    required String title,
    required Widget child,
    Widget? leading,
    bool isLoading = false,
    Widget? widgetAction,
    bool isAction = false,
    Widget? header,
    Widget? footer,
    Widget? floatingActionButton,
    PreferredSizeWidget? bottom,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Color? backgroundColor,
  }) =>
      ScaffoldPrimary(
        title: title,
        leading: leading,
        isLoading: isLoading,
        widgetAction: widgetAction,
        isAction: isAction,
        header: header,
        footer: footer,
        floatingActionButton: floatingActionButton,
        bottom: bottom,
        floatingActionButtonLocation: floatingActionButtonLocation,
        backgroundColor: backgroundColor,
        child: child,
      );

  static Widget scaffoldCustom({
    required Widget child,
    bool isLoading = false,
    Widget? header,
    Widget? footer,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    required AppBar appBar,
    Color? backgroundColor,
  }) =>
      ScaffoldCustom(
        appBar: appBar,
        isLoading: isLoading,
        header: header,
        footer: footer,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        backgroundColor: backgroundColor,
        child: child,
      );

  static scaffoldSearch({
    required Widget child,
    Widget? leading,
    bool isLoading = false,
    Widget? header,
    Widget? footer,
    Widget? floatingActionButton,
    PreferredSizeWidget? bottom,
    Color? backgroundColor,
    required Widget widgetSearch,
  }) =>
      ScaffoldSearch(
        widgetSearch: widgetSearch,
        leading: leading,
        isLoading: isLoading,
        header: header,
        footer: footer,
        floatingActionButton: floatingActionButton,
        bottom: bottom,
        backgroundColor: backgroundColor,
        child: child,
      );

  static Widget simpleTextField({
    required TextEditingController textEditingController,
    required String labelText,
    required String hintText,
    required Function(String) onChanged,
    required TextInputType textInputType,
    bool obscureText = false,
    required Function(String) onSubmitted,
    FocusNode? focusNode,
    bool? autofocus,
    String? errorText,
    int maxLines = 1,
    int? maxLenght,
    List<TextInputFormatter>? inputFormatters,
    bool enabled = true,
  }) =>
      SimpleTextField(
        textEditingController: textEditingController,
        labelText: labelText,
        hintText: hintText,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        autofocus: autofocus,
        errorText: errorText,
        maxLines: maxLines,
        maxLenght: maxLenght,
        inputFormatters: inputFormatters,
        enabled: enabled,
        textInputType: textInputType,
      );
}
