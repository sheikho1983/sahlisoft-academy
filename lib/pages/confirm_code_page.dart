import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

/// LoginTemplateConfirmCodePage is used to show a page, lets users can input the OTP code sent to their email/phone number.
class LoginTemplateConfirmCodePage extends StatelessWidget {
  /// See [LoginTemplateStyle]
  final LoginTemplateStyle style;

  /// Your product logo
  final Widget logo;

  /// The message is used to explain to users.
  final String textMessage;

  /// The text of button to go to next step.
  final String buttonTextNext;

  /// The action of button to go to next step.
  final Function() onPressedNext;

  /// The message is used to explain to users about resending the OTP code.
  final String textMessageResend;

  /// The text of button to resend the OTP code.
  final String buttonTextResend;

  /// The action of button to resend the OTP code.
  final Function() onPressedResend;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final TextInputAction textInputActionCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final TextInputType keyboardTypeCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final String hintTextCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final String? errorTextCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final List<TextInputFormatter>? inputFormattersCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final Function()? onTapCode;

  /// Use for the TextField lets the users input the OTP code. See also [LoginTemplateTextField]
  final TextEditingController? controllerCode;

  /// Constructor
  const LoginTemplateConfirmCodePage({
    Key? key,
    required this.logo,
    required this.style,
    this.textMessage: 'Enter the 6 digit code sent to you at ******.',
    this.buttonTextNext: 'Confirm',
    required this.onPressedNext,
    this.textInputActionCode: TextInputAction.done,
    this.keyboardTypeCode: TextInputType.number,
    this.hintTextCode: 'Code',
    this.errorTextCode,
    this.inputFormattersCode,
    this.onTapCode,
    this.controllerCode,
    this.buttonTextResend: 'Resend',
    required this.onPressedResend,
    this.textMessageResend: 'Not received, even at Spam folder?',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: style.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Center(
              child: logo,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.screenPadding.top + style.verticalSpacingBetweenGroup,
            ),
            child: Text(
              textMessage,
              style: style.messageTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: LoginTemplateTextField(
              style: style,
              textInputAction: textInputActionCode,
              keyboardType: keyboardTypeCode,
              hintText: hintTextCode,
              controller: controllerCode,
              onTap: onTapCode,
              errorText: errorTextCode,
              inputFormatters: inputFormattersCode,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
            child: LoginTemplateButton(
              text: buttonTextNext,
              onPressed: onPressedNext,
              style: style,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                Text(
                  textMessageResend,
                  style: style.messageTextStyle,
                ),
                LoginTemplateInlineButton(
                  text: buttonTextResend,
                  onPressed: onPressedResend,
                  style: style,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
