// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:planny/core/common/app_assets.dart';
import 'package:planny/core/common/app_routes.dart';
import 'package:planny/core/common/extension/context.dart';
import 'package:planny/generated/l10n.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/theme/app_decoration.dart';
import 'package:planny/ui/common/theme/app_sizes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'package:planny/ui/features/splash/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is NotAuthorized) {
            AppRoutes.replaceToSelectSchool(context);
          } else if (state is SchoolSelected) {
            AppRoutes.replaceToLogin(context);
          } else if (state is Authorized) {
            AppRoutes.replaceToHome(context);
          } else if (state is NetworkError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds: double.infinity.toInt()),
              backgroundColor: context.theme.dangerBackground,
              shape: AppDecoration.snackBarBorder,
              behavior: SnackBarBehavior.floating,
              content: Text(S.current.networkError),
              action: SnackBarAction(
                label: S.current.retry,
                textColor: context.theme.whiteOnColor,
                onPressed: () => context.bloc<SplashBloc>().add(const SplashEvent.started()),
              ),
            ));
          }
        },
        child: Scaffold(
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: AppSizes.splashLogoMaxWidth),
              child: Image.asset(
                AppAssets.imgLogo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
