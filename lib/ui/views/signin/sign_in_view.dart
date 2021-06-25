import 'package:flutter/material.dart';
import 'package:lexiedu_app/ui/views/signin/sign_in_model.dart';
import 'package:lexiedu_app/ui/views/signin/sign_in_view.form.dart';
import 'package:lexiedu_app/ui/widgets/app_button.dart';
import 'package:lexiedu_app/ui/widgets/app_error_text.dart';
import 'package:lexiedu_app/ui/widgets/app_text_button.dart';
import 'package:lexiedu_app/ui/widgets/app_text_form_field.dart';
import 'package:lexiedu_app/ui/widgets/lexiedu_logo.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked/stacked.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true)
])
class SignInView extends ViewModelBuilderWidget<SignInViewModel>
    with $SignInView {
  void onViewModelReady(SignInViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
      BuildContext context, SignInViewModel viewModel, Widget? child) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.95,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  LexieduLogo(),
                  SizedBox(height: 40),
                  AppTextFormField(
                    labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    labelText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    label: 'Masuk',
                    loading: viewModel.isBusy,
                    onPressed: () {
                      viewModel.signIn();
                    },
                  ),
                  SizedBox(height: 5),
                  AppErrorText(text: viewModel.modelError),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Belum punya akun?'),
                      SizedBox(width: 5),
                      AppTextButton(
                        label: 'Daftar',
                        onTap: viewModel.toSignUpScreen,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SignInViewModel viewModelBuilder(BuildContext context) {
    return SignInViewModel();
  }
}
