import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _kColorPrimary = Color(0xffffab00);
const _kColorPrimaryDark = Color(0xffc67c00);
const _kColorPrimaryLight = Color(0xffffdd4b);
const _kColorButtonOverlay = Colors.black12;
const _kColorTextDark = Colors.black87;
const _kColorTextLight = Colors.white;
const _kColorTextMedium = Colors.black54;
const _kButtonMinHeight = 45.0;
const _kFontSizeNormal = 13.0;
const _kFontSizeMedium = 11.0;
const _kFontSizeSmall = 10.0;
const _kBorderRadius = 4.0;

/// LoginTemplateStyle defines style for every single components of every pages.
/// There are [LoginTemplateSignInPage], [LoginTemplateSignUpPage], [LoginTemplateConfirmCodePage], [LoginTemplateForgotPasswordPage], [LoginTemplateCreatePasswordPage]
/// {@tool snippet}
/// This is a sample of a [LoginTemplateStyle].
/// ```dart
///   LoginTemplateStyle(
///      primary: Color(0xffffab00),
///      primaryDark: Color(0xffc67c00),
///      primaryLight: Color(0xffffdd4b),
///      buttonOverlay: Colors.black12,
///      inlineButtonStyle: ButtonStyle(
///        shape: MaterialStateProperty.all<OutlinedBorder>(
///            RoundedRectangleBorder(
///          borderRadius: BorderRadius.circular(_kBorderRadius),
///        )),
///        padding: MaterialStateProperty.all<EdgeInsets>(
///            EdgeInsets.symmetric(horizontal: 2)),
///        elevation: MaterialStateProperty.all<double>(0),
///        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
///        backgroundColor:
///            MaterialStateProperty.all<Color>(Colors.transparent),
///        overlayColor: MaterialStateProperty.all<Color>(_kColorPrimaryLight),
///        minimumSize: MaterialStateProperty.all<Size>(Size.zero),
///      ),
///      textFieldTextStyle: const TextStyle(
///        fontSize: _kFontSizeNormal,
///        color: _kColorTextDark,
///      ),
///      screenPadding: const EdgeInsets.all(22),
///      verticalSpacingBetweenComponents: 10,
///      verticalSpacingBetweenSubComponents: 6,
///      verticalSpacingBetweenGroup: 22,
///      inlineButtonTextStyle: const TextStyle(
///        color: _kColorTextMedium,
///        fontSize: _kFontSizeMedium,
///      ),
///      buttonTextStyle: const TextStyle(
///        color: _kColorTextLight,
///        fontSize: _kFontSizeNormal,
///      ),
///      messageTextStyle: const TextStyle(
///        fontSize: _kFontSizeMedium,
///        color: Colors.black45,
///      ),
///      socialButtonTextStyle: const TextStyle(
///        color: _kColorTextDark,
///        fontSize: _kFontSizeNormal,
///      ),
///      itemShadow: const BoxShadow(
///        color: Colors.black12,
///        offset: Offset(2, 2),
///        blurRadius: 7,
///        spreadRadius: 2,
///      ),
///      buttonStyle: ButtonStyle(
///        shape: MaterialStateProperty.all<OutlinedBorder>(
///            RoundedRectangleBorder(
///          borderRadius: BorderRadius.circular(_kBorderRadius),
///        )),
///        padding: MaterialStateProperty.all<EdgeInsets>(
///            EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
///        elevation: MaterialStateProperty.all<double>(7),
///        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
///        backgroundColor: MaterialStateProperty.all<Color>(_kColorPrimary),
///        overlayColor:
///            MaterialStateProperty.all<Color>(_kColorButtonOverlay),
///        minimumSize: MaterialStateProperty.all<Size>(
///            Size(_kButtonMinHeight, _kButtonMinHeight)),
///      ),
///      socialButtonStyle: ButtonStyle(
///        shape: MaterialStateProperty.all<OutlinedBorder>(
///            RoundedRectangleBorder(
///          borderRadius: BorderRadius.circular(_kBorderRadius),
///        )),
///        padding: MaterialStateProperty.all<EdgeInsets>(
///            EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
///        elevation: MaterialStateProperty.all<double>(7.0),
///        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
///        backgroundColor: MaterialStateProperty.all<Color>(_kColorTextLight),
///        overlayColor:
///            MaterialStateProperty.all<Color>(_kColorButtonOverlay),
///        minimumSize: MaterialStateProperty.all<Size>(
///            Size(_kButtonMinHeight, _kButtonMinHeight)),
///      ),
///      textFieldHintTextStyle: const TextStyle(
///        fontSize: _kFontSizeNormal,
///        color: _kColorTextMedium,
///      ),
///      textFieldErrorTextStyle: const TextStyle(
///        fontSize: _kFontSizeSmall,
///        color: Colors.redAccent,
///      ),
///      textFieldPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
///    )
/// ```
/// {@end-tool}
class LoginTemplateStyle {
  /// The padding from the border ơf screen to a page.
  final EdgeInsets screenPadding;

  /// The vertical spacing between each components in a page.
  final double verticalSpacingBetweenComponents;

  /// The vertical spacing between each child components in a component in a page.
  final double verticalSpacingBetweenSubComponents;

  /// The vertical spacing between each group of components in a page.
  final double verticalSpacingBetweenGroup;

  /// The style of Text widget of a button that placed inline a RichText.
  final TextStyle inlineButtonTextStyle;

  /// The style of Text widget of a normal button that placed in a page.
  final TextStyle buttonTextStyle;

  /// The style of Text widget is used to display as a message.
  final TextStyle messageTextStyle;

  /// The style of Text widget of a button that is used for sign in/up by a social account (Ex: Facebook, AppleId,...).
  final TextStyle socialButtonTextStyle;

  /// The shadow is used for the TextField of else.
  final BoxShadow itemShadow;

  /// The style of TextField widget.
  final TextStyle textFieldTextStyle;

  /// The style of hint of TextField widget.
  final TextStyle textFieldHintTextStyle;

  /// The style of error of TextField widget.
  final TextStyle textFieldErrorTextStyle;

  /// The style of ElevatedButton widget that placed inline a RichText.
  final ButtonStyle inlineButtonStyle;

  /// Primary color
  final Color primary;

  /// Primary dark color
  final Color primaryDark;

  /// Primary light color
  final Color primaryLight;

  /// Overlay color when pressed on a button.
  final Color buttonOverlay;

  /// The style of ElevatedButton widget that is used for normal cases.
  final ButtonStyle buttonStyle;

  /// The style of ElevatedButton widget is used for sign in/up by a social account. See also [socialButtonTextStyle]
  final ButtonStyle socialButtonStyle;

  /// The padding of a TextField.
  final EdgeInsets textFieldPadding;

  /// Constructor
  LoginTemplateStyle({
    required this.textFieldHintTextStyle,
    required this.textFieldErrorTextStyle,
    required this.socialButtonStyle,
    required this.screenPadding,
    required this.verticalSpacingBetweenComponents,
    required this.verticalSpacingBetweenSubComponents,
    required this.verticalSpacingBetweenGroup,
    required this.inlineButtonTextStyle,
    required this.buttonTextStyle,
    required this.messageTextStyle,
    required this.socialButtonTextStyle,
    required this.itemShadow,
    required this.textFieldTextStyle,
    required this.inlineButtonStyle,
    required this.primary,
    required this.primaryDark,
    required this.primaryLight,
    required this.buttonOverlay,
    required this.buttonStyle,
    required this.textFieldPadding,
  });

  static LoginTemplateStyle _resolve(LoginTemplateStyle? style) {
    return style ??
        LoginTemplateStyle(
          primary: _kColorPrimary,
          primaryDark: _kColorPrimaryDark,
          primaryLight: _kColorPrimaryLight,
          buttonOverlay: _kColorButtonOverlay,
          inlineButtonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 2)),
            elevation: MaterialStateProperty.all<double>(0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            overlayColor: MaterialStateProperty.all<Color>(_kColorPrimaryLight),
            minimumSize: MaterialStateProperty.all<Size>(Size.zero),
          ),
          textFieldTextStyle: const TextStyle(
            fontSize: _kFontSizeNormal,
            color: _kColorTextDark,
          ),
          screenPadding: const EdgeInsets.all(22),
          verticalSpacingBetweenComponents: 10,
          verticalSpacingBetweenSubComponents: 6,
          verticalSpacingBetweenGroup: 22,
          inlineButtonTextStyle: const TextStyle(
            color: _kColorTextMedium,
            fontSize: _kFontSizeMedium,
          ),
          buttonTextStyle: const TextStyle(
            color: _kColorTextLight,
            fontSize: _kFontSizeNormal,
          ),
          messageTextStyle: const TextStyle(
            fontSize: _kFontSizeMedium,
            color: Colors.black45,
          ),
          socialButtonTextStyle: const TextStyle(
            color: _kColorTextDark,
            fontSize: _kFontSizeNormal,
          ),
          itemShadow: const BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 2),
            blurRadius: 7,
            spreadRadius: 2,
          ),
          buttonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
            elevation: MaterialStateProperty.all<double>(7),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: MaterialStateProperty.all<Color>(_kColorPrimary),
            overlayColor:
                MaterialStateProperty.all<Color>(_kColorButtonOverlay),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(_kButtonMinHeight, _kButtonMinHeight)),
          ),
          socialButtonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
            elevation: MaterialStateProperty.all<double>(7.0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: MaterialStateProperty.all<Color>(_kColorTextLight),
            overlayColor:
                MaterialStateProperty.all<Color>(_kColorButtonOverlay),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(_kButtonMinHeight, _kButtonMinHeight)),
          ),
          textFieldHintTextStyle: const TextStyle(
            fontSize: _kFontSizeNormal,
            color: _kColorTextMedium,
          ),
          textFieldErrorTextStyle: const TextStyle(
            fontSize: _kFontSizeSmall,
            color: Colors.redAccent,
          ),
          textFieldPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        );
  }

  /// Create a default style.
  static final LoginTemplateStyle defaultTemplate = _resolve(null);

  /// Create your own style that only change some child styles.
  static LoginTemplateStyle only({
    EdgeInsets? screenPadding,
    double? verticalSpacingBetweenComponents,
    double? verticalSpacingBetweenSubComponents,
    double? verticalSpacingBetweenGroup,
    TextStyle? inlineButtonTextStyle,
    TextStyle? buttonTextStyle,
    TextStyle? messageTextStyle,
    TextStyle? socialButtonTextStyle,
    BoxShadow? itemShadow,
    TextStyle? textFieldTextStyle,
    TextStyle? textFieldHintTextStyle,
    TextStyle? textFieldErrorTextStyle,
    ButtonStyle? inlineButtonStyle,
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? buttonOverlay,
    ButtonStyle? buttonStyle,
    ButtonStyle? socialButtonStyle,
    EdgeInsets? textFieldPadding,
  }) {
    return defaultTemplate.copyWith(
      screenPadding: screenPadding,
      verticalSpacingBetweenComponents: verticalSpacingBetweenComponents,
      verticalSpacingBetweenSubComponents: verticalSpacingBetweenSubComponents,
      verticalSpacingBetweenGroup: verticalSpacingBetweenGroup,
      inlineButtonTextStyle: inlineButtonTextStyle,
      buttonTextStyle: buttonTextStyle,
      messageTextStyle: messageTextStyle,
      socialButtonTextStyle: socialButtonTextStyle,
      itemShadow: itemShadow,
      textFieldTextStyle: textFieldTextStyle,
      textFieldHintTextStyle: textFieldHintTextStyle,
      textFieldErrorTextStyle: textFieldErrorTextStyle,
      inlineButtonStyle: inlineButtonStyle,
      primary: primary,
      primaryDark: primaryDark,
      primaryLight: primaryLight,
      buttonOverlay: buttonOverlay,
      buttonStyle: buttonStyle,
      socialButtonStyle: socialButtonStyle,
      textFieldPadding: textFieldPadding,
    );
  }

  /// Create a new instance using copy this instance
  LoginTemplateStyle copyWith({
    EdgeInsets? screenPadding,
    double? verticalSpacingBetweenComponents,
    double? verticalSpacingBetweenSubComponents,
    double? verticalSpacingBetweenGroup,
    TextStyle? inlineButtonTextStyle,
    TextStyle? buttonTextStyle,
    TextStyle? messageTextStyle,
    TextStyle? socialButtonTextStyle,
    BoxShadow? itemShadow,
    TextStyle? textFieldTextStyle,
    TextStyle? textFieldHintTextStyle,
    TextStyle? textFieldErrorTextStyle,
    ButtonStyle? inlineButtonStyle,
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? buttonOverlay,
    ButtonStyle? buttonStyle,
    ButtonStyle? socialButtonStyle,
    EdgeInsets? textFieldPadding,
  }) {
    if ((screenPadding == null ||
            identical(screenPadding, this.screenPadding)) &&
        (verticalSpacingBetweenComponents == null ||
            identical(verticalSpacingBetweenComponents,
                this.verticalSpacingBetweenComponents)) &&
        (verticalSpacingBetweenSubComponents == null ||
            identical(verticalSpacingBetweenSubComponents,
                this.verticalSpacingBetweenSubComponents)) &&
        (verticalSpacingBetweenGroup == null ||
            identical(verticalSpacingBetweenGroup,
                this.verticalSpacingBetweenGroup)) &&
        (inlineButtonTextStyle == null ||
            identical(inlineButtonTextStyle, this.inlineButtonTextStyle)) &&
        (buttonTextStyle == null ||
            identical(buttonTextStyle, this.buttonTextStyle)) &&
        (messageTextStyle == null ||
            identical(messageTextStyle, this.messageTextStyle)) &&
        (socialButtonTextStyle == null ||
            identical(socialButtonTextStyle, this.socialButtonTextStyle)) &&
        (itemShadow == null || identical(itemShadow, this.itemShadow)) &&
        (textFieldTextStyle == null ||
            identical(textFieldTextStyle, this.textFieldTextStyle)) &&
        (textFieldHintTextStyle == null ||
            identical(textFieldHintTextStyle, this.textFieldHintTextStyle)) &&
        (textFieldErrorTextStyle == null ||
            identical(textFieldErrorTextStyle, this.textFieldErrorTextStyle)) &&
        (inlineButtonStyle == null ||
            identical(inlineButtonStyle, this.inlineButtonStyle)) &&
        (primary == null || identical(primary, this.primary)) &&
        (primaryDark == null || identical(primaryDark, this.primaryDark)) &&
        (primaryLight == null || identical(primaryLight, this.primaryLight)) &&
        (buttonOverlay == null ||
            identical(buttonOverlay, this.buttonOverlay)) &&
        (buttonStyle == null || identical(buttonStyle, this.buttonStyle)) &&
        (socialButtonStyle == null ||
            identical(socialButtonStyle, this.socialButtonStyle)) &&
        (textFieldPadding == null ||
            identical(textFieldPadding, this.textFieldPadding))) {
      return this;
    }

    return new LoginTemplateStyle(
      screenPadding: screenPadding ?? this.screenPadding,
      verticalSpacingBetweenComponents: verticalSpacingBetweenComponents ??
          this.verticalSpacingBetweenComponents,
      verticalSpacingBetweenSubComponents:
          verticalSpacingBetweenSubComponents ??
              this.verticalSpacingBetweenSubComponents,
      verticalSpacingBetweenGroup:
          verticalSpacingBetweenGroup ?? this.verticalSpacingBetweenGroup,
      inlineButtonTextStyle:
          inlineButtonTextStyle ?? this.inlineButtonTextStyle,
      buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
      messageTextStyle: messageTextStyle ?? this.messageTextStyle,
      socialButtonTextStyle:
          socialButtonTextStyle ?? this.socialButtonTextStyle,
      itemShadow: itemShadow ?? this.itemShadow,
      textFieldTextStyle: textFieldTextStyle ?? this.textFieldTextStyle,
      textFieldHintTextStyle:
          textFieldHintTextStyle ?? this.textFieldHintTextStyle,
      textFieldErrorTextStyle:
          textFieldErrorTextStyle ?? this.textFieldErrorTextStyle,
      inlineButtonStyle: inlineButtonStyle ?? this.inlineButtonStyle,
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryLight: primaryLight ?? this.primaryLight,
      buttonOverlay: buttonOverlay ?? this.buttonOverlay,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      socialButtonStyle: socialButtonStyle ?? this.socialButtonStyle,
      textFieldPadding: textFieldPadding ?? this.textFieldPadding,
    );
  }
}

/// LoginTemplateInlineButton is placed inline a RichText.
class LoginTemplateInlineButton extends StatelessWidget {
  /// The button text.
  final String text;

  /// The action.
  final Function()? onPressed;

  /// The [LoginTemplateStyle] defines this widget style.
  final LoginTemplateStyle style;

  /// Constructor
  const LoginTemplateInlineButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Text(
        text,
        style: style.inlineButtonTextStyle,
      ),
      style: style.inlineButtonStyle,
    );
  }
}

/// LoginTemplateButton is used for normal case.
class LoginTemplateButton extends StatelessWidget {
  /// The button text.
  final String text;

  /// The action.
  final Function()? onPressed;

  /// The [LoginTemplateStyle] defines this widget style.
  final LoginTemplateStyle style;

  /// Constructor
  const LoginTemplateButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Text(
        text,
        style: style.buttonTextStyle,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      style: style.buttonStyle,
    );
  }
}

/// LoginTemplateSocialButton is used for sign in/up by a social account.
class LoginTemplateSocialButton extends StatelessWidget {
  /// The button text.
  final String text;

  /// The action.
  final Function()? onPressed;

  /// The [LoginTemplateStyle] defines this widget style.
  final LoginTemplateStyle style;

  /// The icon is placed at the left side of this button.
  final Widget icon;

  const LoginTemplateSocialButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.icon,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Row(
        children: [
          icon,
          Expanded(
            child: Text(
              text,
              style: style.socialButtonTextStyle,
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          IgnorePointer(
            child: Opacity(
              child: icon,
              opacity: 0.0,
            ),
          ),
        ],
      ),
      style: style.socialButtonStyle,
    );
  }
}

/// LoginTemplateTextField is used for inputting user information, such as: email, password, name, ...
class LoginTemplateTextField extends StatelessWidget {
  /// See [LoginTemplateStyle]
  final LoginTemplateStyle style;

  /// See [TextInputAction]
  final TextInputAction textInputAction;

  /// See [TextInputType]
  final TextInputType keyboardType;

  /// See hintText in [InputDecoration]
  final String? hintText;

  /// See errorText in [InputDecoration]
  final String? errorText;

  /// See [TextInputFormatter]
  final List<TextInputFormatter>? inputFormatters;

  /// See onTap in [TextField]
  final Function()? onTap;

  /// See controller in [TextEditingController]
  final TextEditingController? controller;

  /// See enabled in [TextField]
  final bool? enabled;

  /// See maxLines in [TextField]
  final int maxLines;

  const LoginTemplateTextField({
    Key? key,
    required this.style,
    required this.textInputAction,
    required this.keyboardType,
    this.hintText,
    this.errorText,
    this.inputFormatters,
    this.onTap,
    this.controller,
    this.enabled,
    this.maxLines: 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: style.textFieldPadding,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: (style.buttonStyle.shape
                          ?.resolve(MaterialState.values.toSet())
                      as RoundedRectangleBorder)
                  .borderRadius,
            ),
            shadows: [
              style.itemShadow,
            ],
          ),
          child: TextField(
            textAlign: TextAlign.left,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            maxLines: maxLines,
            style: style.textFieldTextStyle,
            obscureText: keyboardType == TextInputType.visiblePassword,
            cursorColor: style.primary,
            inputFormatters: inputFormatters,
            onTap: onTap,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: style.textFieldHintTextStyle,
              hintMaxLines: maxLines,
              border: InputBorder.none,
            ),
            enabled: enabled,
          ),
        ),
        if (errorText?.isNotEmpty == true)
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenSubComponents,
              left: style.verticalSpacingBetweenSubComponents,
              right: style.verticalSpacingBetweenSubComponents,
            ),
            child: Text(
              errorText!,
              style: style.textFieldErrorTextStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
      ],
    );
  }
}

/// LoginTemplateTerm is used for showing the product term of service and privacy policy message. It is placed at the bottom on each page.
class LoginTemplateTerm extends StatelessWidget {
  /// See [LoginTemplateStyle]
  final LoginTemplateStyle style;

  /// The action to navigate to your TermOfService screen.
  final Function() onPressedTermOfService;

  /// The action to navigate to your PrivacyPolicy screen.
  final Function() onPressedPrivacyPolicy;

  /// The message.
  final String text;

  /// Text in Term Of Service button.
  final String termOfServiceButtonText;

  /// Text in Privacy Policy button.
  final String privacyPolicyButtonText;

  const LoginTemplateTerm({
    Key? key,
    required this.style,
    required this.onPressedTermOfService,
    required this.onPressedPrivacyPolicy,
    this.text: 'By registering, you agree to our ',
    this.termOfServiceButtonText: 'Term of service',
    this.privacyPolicyButtonText: 'Privacy Policy.',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: style.verticalSpacingBetweenGroup,
        left: style.verticalSpacingBetweenGroup,
        right: style.verticalSpacingBetweenGroup,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Text(
            text,
            style: style.messageTextStyle,
          ),
          LoginTemplateInlineButton(
            text: termOfServiceButtonText,
            style: style,
            onPressed: onPressedTermOfService,
          ),
          Text(
            ' & ',
            style: style.messageTextStyle,
          ),
          LoginTemplateInlineButton(
            text: privacyPolicyButtonText,
            style: style,
            onPressed: onPressedPrivacyPolicy,
          ),
        ],
      ),
    );
  }
}
