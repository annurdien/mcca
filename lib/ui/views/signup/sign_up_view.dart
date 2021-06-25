import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lexiedu_app/ui/views/signup/sign_up_model.dart';
import 'package:lexiedu_app/ui/widgets/app_button.dart';
import 'package:lexiedu_app/ui/widgets/app_error_text.dart';
import 'package:lexiedu_app/ui/widgets/app_text_button.dart';
import 'package:lexiedu_app/ui/widgets/app_text_form_field.dart';
import 'package:lexiedu_app/ui/widgets/lexiedu_logo.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_view.form.dart';
import 'sign_up_model.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
  FormTextField(name: 'confirmation', isPassword: true)
])
class SignUpView extends ViewModelBuilderWidget<SignUpViewModel>
    with $SignUpView {
  @override
  void onViewModelReady(SignUpViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
      BuildContext context, SignUpViewModel viewModel, Widget? child) {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  LexieduLogo(),
                  SizedBox(height: 20),
                  AppTextFormField(
                    labelText: 'Nama',
                    controller: nameController,
                    focusNode: nameFocusNode,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 5),
                  AppTextFormField(
                    labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 5),
                  AppTextFormField(
                    labelText: 'Password',
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 5),
                  AppTextFormField(
                    labelText: 'Konfirmasi Password',
                    controller: confirmationController,
                    focusNode: confirmationFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    label: 'Daftar',
                    loading: viewModel.isBusy,
                    onPressed: () {
                      viewModel.signUp();
                    },
                  ),
                  SizedBox(height: 5),
                  AppErrorText(text: viewModel.modelError),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah punya akun?"),
                      SizedBox(width: 5),
                      AppTextButton(
                        label: 'Masuk',
                        onTap: viewModel.toSignInView,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(BuildContext context) {
    return SignUpViewModel();
  }
}
