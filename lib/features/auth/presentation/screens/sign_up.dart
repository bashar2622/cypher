import 'package:cipher/core/constantse/app_screens_keys.dart';
import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/services/dependency_injection.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/core/utils/validation.dart';
import 'package:cipher/features/auth/presentation/state_managment/sign_up_bloc.dart';
import 'package:cipher/features/auth/presentation/widgets/login_link.dart';
import 'package:cipher/shared/widgets/custom_button.dart';
import 'package:cipher/shared/widgets/custom_loading.dart';
import 'package:cipher/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final GlobalKey<FormState> globalKey = GlobalKey();
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    'Welcome to Cipher 👋',
                    style: AppTextStyle.headlineStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Your AI-powered financial companion',
                    style: AppTextStyle.bodyStyle,
                  ),
                  const SizedBox(height: 24),
                  Divider(color: ColorsPalette.secondColor),
                  const SizedBox(height: 24),
                  CustomTextField(
                    controller: email,
                    validator: validateEmail,
                    label: 'Email',
                    hintText: 'your email',
                  ),
                  const SizedBox(height: 24),
                  CustomTextField(
                    validator: validatePassword,
                    controller: password,
                    label: 'Password',
                    hintText: 'password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 43),
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: (context, state) {
                      if (state is LoadingSignUpState) {
                        LoadingDialog.show(
                          context,
                          text: 'جاري انشاء الحساب...',
                        );
                      } else if (state is SuccessSignUpState) {
                        LoadingDialog.hide(context);
                        context.push(AppScreensKeys.mainScreen);
                      }
                    },
                    builder: (context, state) {
                      return CustomButton(
                        title: 'Sign Up',
                        color: ColorsPalette.sevenColor,
                        func: () {
                          //if (globalKey.currentState!.validate()) {
                          BlocProvider.of<SignUpBloc>(
                            context,
                          ).add(SignUpEvent());
                          //}
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Center(child: Text('Or', style: AppTextStyle.captionStyle)),
                  const SizedBox(height: 24),
                  CustomButton(
                    color: ColorsPalette.primaryColor,
                    title: '',
                    func: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          '${AppKeys.icons}google.png',
                          height: 20,
                          width: 20,
                        ),
                        Spacer(),
                        Text(
                          'Sign up with Google',
                          style: AppTextStyle.captionStyle.copyWith(
                            color: ColorsPalette.fouthColor,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    color: ColorsPalette.primaryColor,
                    title: '',
                    func: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          '${AppKeys.icons}apple.png',
                          height: 20,
                          width: 20,
                        ),
                        Spacer(),
                        Text(
                          'Sign up with Apple',
                          style: AppTextStyle.captionStyle.copyWith(
                            color: ColorsPalette.fouthColor,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  LoginLink(
                    text: "Don’t have an account?",
                    actionText: " Log in",
                    onTap: () {
                      // Add navigation logic here
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
