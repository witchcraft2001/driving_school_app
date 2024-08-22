// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:planny/core/common/app_assets.dart';
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/core/domain/entity/user_entity.dart';
import 'package:planny/generated/l10n.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/app_bar.dart';
import 'package:planny/ui/common/app_button.dart';
import 'package:planny/ui/common/cell_column.dart';
import 'package:planny/ui/common/network_image_with_shimmer.dart';
import 'package:planny/ui/common/text_cell.dart';
import 'package:planny/ui/common/theme/app_decoration.dart';
import 'package:planny/ui/common/theme/app_sizes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'bloc/profile_bloc.dart';

part 'widget/profile_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (BuildContext context, ProfileState state) => _ProfileScreenInternal(
          user: state.user,
        ),
        listener: (BuildContext context, ProfileState state) {},
      ),
    );
  }
}

class _ProfileScreenInternal extends StatelessWidget {
  final UserEntity user;

  const _ProfileScreenInternal({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlannyAppBar(
        title: S.current.profileTitle,
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: _ProfileContent(user: user,),
    );
  }
}
