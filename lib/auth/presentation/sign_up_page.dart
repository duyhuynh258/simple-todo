import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_todo_app/auth/application/sign_up_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_router.dart';
import 'package:simple_todo_app/core/presentation/widgets/circular_progress_container.dart';
import 'package:simple_todo_app/core/presentation/widgets/page_background_gradient_container.dart';
import 'package:simple_todo_app/core/shared/ui_utils.dart';
import 'package:simple_todo_app/core/shared/validators.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true, _obscureTextCn = true, isLoading = false;
  TextEditingController edtEmail = TextEditingController();
  TextEditingController edtPwd = TextEditingController();
  TextEditingController edtCPwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: BlocProvider<SignUpBloc>(
        create: (_) => SignUpBloc(context.read<AuthRepository>()),
        child: Builder(
            builder: (context) => Scaffold(
                  body: Stack(
                    children: [
                      const PageBackgroundGradientContainer(),
                      SingleChildScrollView(
                        child: form(),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }

  Widget form() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: MediaQuery.of(context).size.width * .08,
            end: MediaQuery.of(context).size.width * .08),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            signUpText(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            showTopImage(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            showEmail(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            showPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            showCnfPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            showSignup(),
            showGoSignIn(),
          ],
        ),
      ),
    );
  }

  Widget signUpText() {
    return Text(
      'Sign Up',
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
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

  Widget showEmail() {
    return TextFormField(
      controller: edtEmail,
      keyboardType: TextInputType.emailAddress,
      validator: (val) =>
          Validators.validateEmail(val!, 'Email is Required', 'Invalid Email'),
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

  Widget showPassword() {
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

  Widget showCnfPassword() {
    return TextFormField(
      controller: edtCPwd,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      obscureText: _obscureTextCn,
      obscuringCharacter: '*',
      validator: (val) =>
          val != edtPwd.text ? 'Confirm Password not match' : null,
      decoration: InputDecoration(
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(15),
        hintText: 'Confirm Password*',
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
              _obscureTextCn = !_obscureTextCn;
            });
          },
          child: Icon(
            _obscureTextCn ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }

  Widget showGoSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Already have an account?',
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
        ),
        const SizedBox(width: 2),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Routes.signIn);
          },
          padding: EdgeInsets.zero,
          child: Text(
            'Login',
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

  Widget showSignup() {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 300,
          child: BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) async {
              state.whenOrNull(success: () {
                //on signup success navigate user to sign in screen
                UiUtils.setSnackBar(
                    'Verification email sent to ${edtEmail.text.trim()}',
                    context,
                    false);
                setState(() {
                  Navigator.pop(context);
                });
              }, failure: (failure) {
                //show error message
                UiUtils.setSnackBar(failure.toString(), context, false);
              });
            },
            builder: (context, state) {
              return CupertinoButton(
                color: Theme.of(context).primaryColor,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    //calling signup user
                    await context
                        .read<SignUpBloc>()
                        .signUpUserWithEmailAndPassword(
                            email: edtEmail.text.trim(),
                            password: edtPwd.text.trim());
                  }
                },
                child: state.maybeMap(
                  orElse: () => Text(
                    'Sign Up',
                    style: TextStyle(color: Theme.of(context).backgroundColor),
                  ),
                  inProgress: (_) => const Center(
                    child: CircularProgressContainer(
                      heightAndWidth: 40,
                      useWhiteLoader: true,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void resetForm() {
    setState(() {
      isLoading = false;
      edtEmail.text = '';
      edtPwd.text = '';
      edtCPwd.text = '';
      _formKey.currentState!.reset();
    });
  }
}
