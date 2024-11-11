import 'package:drivers_app/screens/auth/car_detail_screen.dart';
import 'package:drivers_app/screens/auth/cubit/cubit/cubit_cubit.dart';
import 'package:drivers_app/screens/auth/login_screen.dart';
import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/helpers/app_helper.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
import 'package:drivers_app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // Handle any state-specific actions here, e.g., showing a dialog
          },
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(outerPadding),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      appLogo,
                      const SizedBox(height: 25),
                      const Text(
                        "Register as Driver",
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                      CustomTextFormFieldWidget(
                        controller: nameController,
                        hintText: "Your Name",
                        obscureText: false,
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 12),
                      CustomTextFormFieldWidget(
                        controller: emailController,
                        hintText: "Your Email",
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 12),
                      CustomTextFormFieldWidget(
                        controller: passwordController,
                        hintText: "Your Password",
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 12),
                      CustomTextFormFieldWidget(
                        controller: phoneController,
                        hintText: "Your Phone",
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            AppHelper.navigateToScreen(
                              context,
                              const CarDetailScreen(),
                            );
                          },
                          style: ElevatedButton.styleFrom(),
                          child: const Text(
                            "Register Driver",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextButton(
                        onPressed: () {
                          AppHelper.navigateToScreen(
                            context,
                            const LoginScreen(),
                          );
                        },
                        child: const Text(
                          "Have an account? Please login",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
