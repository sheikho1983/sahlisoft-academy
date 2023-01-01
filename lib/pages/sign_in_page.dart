import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

/// LoginTemplateSignInPage is used for sign in page.
class LoginTemplateSignInPage extends StatelessWidget {
  /// See [LoginTemplateStyle]
  final LoginTemplateStyle style;

  /// The action of SignIn button.
  final Function() onPressedSignIn;

  /// The action of ForgotPassword button to navigate to [LoginTemplateForgotPasswordPage]
  final Function() onPressedForgot;

  /// The action of SignUp button to navigate to [LoginTemplateSignUpPage]
  final Function() onPressedSignUp;

  /// Your product logo
  final Widget logo;

  /// The text of SignIn button.
  final String buttonTextSignIn;

  /// The text of ForgotPassword button.
  final String buttonTextForgotPassword;

  /// The text of SignUp button.
  final String buttonTextSignUp;

  /// List of Social button lets the users could sign in/up by their social account (Ex: Facebook, AppleId,...).
  final List<LoginTemplateSocialButton>? socialButtons;

  /// See [LoginTemplateTerm]
  final LoginTemplateTerm? term;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final TextInputAction textInputActionUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final TextInputType keyboardTypeUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final String hintTextUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final String? errorTextUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final List<TextInputFormatter>? inputFormattersUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final Function()? onTapUser;

  /// Use for the TextField lets the users input their email or phone number. See also [LoginTemplateTextField]
  final TextEditingController? controllerUser;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final TextInputAction textInputActionPassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final TextInputType keyboardTypePassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final String hintTextPassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final String? errorTextPassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final List<TextInputFormatter>? inputFormattersPassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final Function()? onTapPassword;

  /// Use for the TextField lets the users input their password. See also [LoginTemplateTextField]
  final TextEditingController? controllerPassword;

  final bool passwordVisible;

  const LoginTemplateSignInPage({
    Key? key,
    required this.logo,
    required this.onPressedSignIn,
    required this.onPressedForgot,
    required this.onPressedSignUp,
    required this.style,
    this.textInputActionUser: TextInputAction.next,
    this.keyboardTypeUser: TextInputType.emailAddress,
    this.hintTextUser: 'User name / Email / Phone number',
    this.errorTextUser,
    this.inputFormattersUser,
    this.onTapUser,
    this.controllerUser,
    this.textInputActionPassword: TextInputAction.done,
    this.keyboardTypePassword: TextInputType.visiblePassword,
    this.hintTextPassword: 'Password',
    this.errorTextPassword,
    this.inputFormattersPassword,
    this.onTapPassword,
    this.controllerPassword,
    this.buttonTextSignIn: 'Sign In',
    this.buttonTextForgotPassword: 'Forgot password?',
    this.buttonTextSignUp: 'Sign Up',
    this.socialButtons,
    this.term,
    this.passwordVisible: true,
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
            child: LoginTemplateTextField(
              style: style,
              textInputAction: textInputActionUser,
              keyboardType: keyboardTypeUser,
              hintText: hintTextUser,
              controller: controllerUser,
              onTap: onTapUser,
              errorText: errorTextUser,
              inputFormatters: inputFormattersUser,
            ),
          ),
          if (passwordVisible)
            Padding(
              padding:
                  EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
              child: LoginTemplateTextField(
                style: style,
                textInputAction: textInputActionPassword,
                keyboardType: keyboardTypePassword,
                hintText: hintTextPassword,
                controller: controllerPassword,
                onTap: onTapPassword,
                errorText: errorTextPassword,
                inputFormatters: inputFormattersPassword,
              ),
            ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
            child: LoginTemplateButton(
              text: buttonTextSignIn,
              onPressed: onPressedSignIn,
              style: style,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (passwordVisible)
                  LoginTemplateInlineButton(
                    text: buttonTextForgotPassword,
                    onPressed: onPressedForgot,
                    style: style,
                  ),
                if (passwordVisible)
                  Text(
                    ' | ',
                    style: style.messageTextStyle,
                  ),
                LoginTemplateInlineButton(
                  text: buttonTextSignUp,
                  onPressed: onPressedSignUp,
                  style: style,
                ),
              ],
            ),
          ),
          if (socialButtons != null)
            Padding(
              padding: EdgeInsets.only(
                top: style.verticalSpacingBetweenGroup,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: socialButtons!
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                            bottom: style.verticalSpacingBetweenComponents,
                          ),
                          child: e,
                        ))
                    .toList(),
              ),
            ),
          if (term != null) term!,
        ],
      ),
    );
  }
}
