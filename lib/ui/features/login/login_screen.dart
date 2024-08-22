// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:planny/core/common/app_routes.dart';
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/core/common/extension/context.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/app_bar.dart';
import 'package:planny/ui/common/app_button.dart';
import 'package:planny/ui/common/app_label.dart';
import 'package:planny/ui/common/app_textfield.dart';
import 'package:planny/ui/features/login/bloc/login_view_state.dart';
import '../../../core/common/app_assets.dart';
import '../../../generated/l10n.dart';
import '../../common/theme/app_sizes.dart';
import 'bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<LoginBloc>()..add(const LoginEvent.started()),
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (BuildContext context, LoginState state) {
          return state.when(
              initial: () => Container(),
              show: (state) => _LoginScreenInternal(
                    state: state,
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
              loggedIn: (_) => Container());
        },
        listener: (BuildContext context, LoginState state) {
          if (state is LoggedIn) {
            AppRoutes.navigateToHome(context);
          }
        },
      ),
    );
  }
}

class _LoginScreenInternal extends StatelessWidget {
  final LoginViewState state;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _LoginScreenInternal({
    super.key,
    required this.state,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlannyAppBar(
        titleWidget: Image.asset(
          AppAssets.imgLogo,
          height: AppSizes.toolbarLogoHeight,
        ),
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: Padding(
        padding: AppSpaces.p16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLabel(
              text: S.current.emailLabel,
            ),
            AppTextField(
              controller: emailController,
              text: state.email,
              textInputAction: TextInputAction.next,
              hint: S.current.emailHint,
              onChanged: (value) {
                context.bloc<LoginBloc>().add(LoginEvent.onEmailChanged(value));
              },
            ),
            const SizedBox(
              height: AppSpaces.sp16,
            ),
            AppLabel(
              text: S.current.passwordLabel,
            ),
            AppTextField(
              obscureText: true,
              controller: passwordController,
              text: state.password,
              textInputAction: TextInputAction.done,
              hint: S.current.passwordHint,
              onChanged: (value) {
                context.bloc<LoginBloc>().add(LoginEvent.onPasswordChanged(value));
              },
            ),
            const SizedBox(
              height: AppSpaces.sp32,
            ),
            AppButton(
              title: S.current.loginButton,
              onPressed: () => context.bloc<LoginBloc>().add(const LoginEvent.onLoginClicked()),
            ),
          ],
        ),
      ),
    );
  }
}
