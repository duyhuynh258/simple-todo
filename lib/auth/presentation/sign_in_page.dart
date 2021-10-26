import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/application/sign_in_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_router.dart';
import 'package:simple_todo_app/core/presentation/widgets/circular_progress_container.dart';
import 'package:simple_todo_app/core/presentation/widgets/custom_rounded_button.dart';
import 'package:simple_todo_app/core/presentation/widgets/page_background_gradient_container.dart';
import 'package:simple_todo_app/core/shared/colors.dart';
import 'package:simple_todo_app/core/shared/ui_utils.dart';
import 'package:simple_todo_app/core/shared/validators.dart';

class SignInPage extends StatefulWidget {
  const SignInPage();

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyDialog = GlobalKey<FormState>();
  bool _obscureText = true, isLoading = false;
  TextEditingController edtEmail = TextEditingController();
  TextEditingController edtEmailReset = TextEditingController();
  TextEditingController edtPwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: BlocProvider<SignInBloc>(
        create: (context) => SignInBloc(
          context.read<AuthRepository>(),
          context.read<AuthBloc>(),
        ),
        child: Builder(
          builder: (context) => Scaffold(
            body: Stack(
              children: <Widget>[
                const PageBackgroundGradientContainer(),
                SingleChildScrollView(
                  child: showForm(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: MediaQuery.of(context).size.width * .08,
          end: MediaQuery.of(context).size.width * .08,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            signUpText(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            showTopImage(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            loginWith(context),
            showSocialMedia(context),
            orLabel(),
            showEmail(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            showPwd(context),
            forgetPwd(context),
            showSignIn(context),
            showGoSignup(context),
          ],
        ),
      ),
    );
  }

  Widget signUpText() {
    return Text(
      'Login',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showTopImage() {
    return Container(
      transformAlignment: Alignment.topCenter,
      child: SvgPicture.asset(
        'assets/images/icon_trello.svg',
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget showEmail(BuildContext context) {
    return TextFormField(
      controller: edtEmail,
      keyboardType: TextInputType.emailAddress,
      validator: (val) =>
          Validators.validateEmail(val!, 'Email required', 'Invalid email'),
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      decoration: InputDecoration(
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: InputBorder.none,
        hintText: 'Email*',
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }

  Widget showPwd(BuildContext context) {
    return TextFormField(
      controller: edtPwd,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      obscureText: _obscureText,
      obscuringCharacter: '*',
      validator: (val) =>
          val!.isEmpty ? 'password should be more then 6 char long' : null,
      decoration: InputDecoration(
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(10),
        hintText: 'Password*',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }

  Widget showSignIn(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: context.read<SignInBloc>(),
      listener: (context, state) async {
        await _listenToSignInState(state);
      },
      builder: (context, state) {
        return CupertinoButton(
          color: Theme.of(context).primaryColor,
          onPressed: () => state.maybeMap(
            orElse: () async {
              if (_formKey.currentState!.validate()) {
                {
                  await context.read<SignInBloc>().signInWithEmailAndPassword(
                        email: edtEmail.text.trim(),
                        password: edtPwd.text.trim(),
                      );
                }
              }
            },
            inProgress: (_) async {},
          ),
          child: state is SignInInProgress &&
                  state.authProvider == AuthProvider.email
              ? const Center(
                  child: CircularProgressContainer(
                    heightAndWidth: 40,
                    useWhiteLoader: true,
                  ),
                )
              : Text(
                  'Login',
                  style: TextStyle(color: Theme.of(context).backgroundColor),
                ),
        );
      },
    );
  }

  Widget showEmailForForgotPwd() {
    return TextFormField(
      controller: edtEmailReset,
      keyboardType: TextInputType.emailAddress,
      validator: (val) => Validators.validateEmail(
        val!,
        'Email is Required',
        'Enter valid email',
      ),
      onSaved: (value) => edtEmailReset.text = value!.trim(),
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      decoration: InputDecoration(
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: InputBorder.none,
        hintText: 'Enter email',
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        ),
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Padding forgetPwd(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () async {
            await showModalBottomSheet<void>(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              context: context,
              builder: (modalContext) => Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: UiUtils.buildLinerGradient(
                      [
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).canvasColor
                      ],
                      Alignment.topCenter,
                      Alignment.bottomCenter,
                    ),
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * (0.4),
                  ),
                  child: Form(
                    key: _formKeyDialog,
                    child: Column(
                      children: [
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            fontSize: 24,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 20,
                            end: 20,
                            top: 20,
                          ),
                          child: Text(
                            'Enter the email address associated with your account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: MediaQuery.of(context).size.width * .08,
                            end: MediaQuery.of(context).size.width * .08,
                            top: 20,
                          ),
                          child: showEmailForForgotPwd(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomRoundedButton(
                          widthPercentage: 0.85,
                          backgroundColor: Theme.of(context).primaryColor,
                          buttonTitle: 'Submit',
                          radius: 10,
                          showBorder: false,
                          height: 50,
                          onTap: () async {
                            final form = _formKeyDialog.currentState;
                            if (form!.validate()) {
                              form.save();

                              await context.read<SignInBloc>().resetPassword(
                                    withEmail: edtEmailReset.text.trim(),
                                  );
                              Future.delayed(const Duration(seconds: 1), () {
                                Navigator.pop(context, 'Cancel');
                              });
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 11,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget orLabel() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width * .5,
            height: 1.75,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7.5),
          decoration: BoxDecoration(
            color: canvasColor,
            border: Border.all(color: canvasColor),
            shape: BoxShape.circle,
          ),
          child: Text(
            'OR',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    );
  }

  Widget loginWith(BuildContext context) {
    return Text(
      'Connect with one of the following Option',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: Theme.of(context).primaryColor,
        fontSize: 14,
      ),
    );
  }

  Widget showSocialMedia(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        if (state is SignInInProgress &&
            state.authProvider != AuthProvider.email) {
          return const Center(
            child: CircularProgressContainer(
              useWhiteLoader: false,
            ),
          );
        }
        return Container(
          padding: EdgeInsets.only(
            top: state is SignInInProgress ? 30.0 : 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (Platform.isIOS)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: () async {
                      UiUtils.setSnackBar(
                        'Coming soon',
                        context,
                        showAction: false,
                      );
                      // TODO(steve): Handle sign in with apple flow
                    },
                    child: SvgPicture.asset(
                      'assets/images/icon_apple.svg',
                      height: MediaQuery.of(context).size.height * .07,
                      width: MediaQuery.of(context).size.width * .1,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                  onTap: () async {
                    await context.read<SignInBloc>().signInWithGoogle();
                  },
                  child: SvgPicture.asset(
                    'assets/images/icon_google.svg',
                    height: MediaQuery.of(context).size.height * .055,
                    width: MediaQuery.of(context).size.width * .085,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget showGoSignup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
          ),
        ),
        const SizedBox(width: 4),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Routes.signUp);
          },
          padding: EdgeInsets.zero,
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _listenToSignInState(SignInState state) async {
    //Executing only if authProvider is email
    await state.whenOrNull(
      success: (user, authProvider, isNewUser) async {
        if (authProvider == AuthProvider.email) {
          //to update auth details after successfully sign in
          // context.read<AuthBloc>().updateAuthDetails(
          //     authProvider: authProvider,
          //     firebaseId: user.uid,
          //     authStatus: true,
          //     isNewUser: isNewUser);
          if (isNewUser) {
            // TODO(steve): Handle flow new user.
          } else {
            await Navigator.of(context)
                .pushReplacementNamed(Routes.home, arguments: false);
          }
        }
      },
      resetPasswordEmailSent: () {
        UiUtils.setSnackBar(
          'Password reset link has been sent to your mail',
          context,
          showAction: false,
        );
      },
      failure: (errorMessage, authProvider) {
        if (authProvider == AuthProvider.email) {
          UiUtils.setSnackBar(errorMessage, context, showAction: false);
        }
      },
    );
  }
}
