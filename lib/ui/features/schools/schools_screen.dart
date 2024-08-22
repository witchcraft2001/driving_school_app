// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:planny/core/common/app_assets.dart';
import 'package:planny/core/common/app_routes.dart';
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/core/common/extension/context.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/app_bar.dart';
import 'package:planny/ui/common/app_button.dart';
import 'package:planny/ui/common/app_label.dart';
import 'package:planny/ui/common/app_shimmer_content.dart';
import 'package:planny/ui/common/app_textfield.dart';
import 'package:planny/ui/common/theme/app_sizes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'package:planny/ui/features/schools/bloc/schools_bloc.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';
import '../../../generated/l10n.dart';

part 'widget/school_item.dart';

part 'widget/school_list.dart';

part 'widget/school_shimmer_item.dart';

class SchoolsScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  SchoolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<SchoolsBloc>()..add(const SchoolsEvent.started()),
      child: BlocConsumer<SchoolsBloc, SchoolsState>(
        builder: (BuildContext context, SchoolsState state) {
          return state.when(
              show: (name, isLoading, error, schools, _) => _SchoolsScreenInternal(
                    name: name,
                    isLoading: isLoading,
                    error: error,
                    schools: schools,
                    nameController: _nameController,
                  ));
        },
        listener: (BuildContext context, SchoolsState state) async {
          if (state.name != _nameController.text) {
            _nameController.text = state.name;
          }
          if (state.selectedSchool != null) {
            await AppRoutes.pushLogin(context);
            if (context.mounted) {
              context.bloc<SchoolsBloc>().add(const SchoolsEvent.onResetSchool());
            }
          }
        },
      ),
    );
  }
}

class _SchoolsScreenInternal extends StatelessWidget {
  final String name;
  final bool isLoading;
  final String? error;
  final List<SchoolEntity> schools;
  final TextEditingController nameController;

  const _SchoolsScreenInternal({
    required this.name,
    required this.isLoading,
    this.error,
    required this.nameController,
    required this.schools,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlannyAppBar(
        titleWidget: Image.asset(
          AppAssets.imgLogo,
          height: AppSizes.toolbarLogoHeight,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLabel(
              text: S.current.enterSchoolNameLabel,
              padding: AppSpaces.ph16t16b4,
            ),
            AppTextField(
              padding: AppSpaces.ph16,
              controller: nameController,
              text: name,
              textInputAction: TextInputAction.next,
              hint: S.current.enterSchoolNameHint,
              onChanged: (value) {
                context.bloc<SchoolsBloc>().add(SchoolsEvent.onNameChanged(value));
              },
            ),
            const SizedBox(
              height: AppSpaces.sp16,
            ),
            AppButton(
              padding: AppSpaces.ph16,
              title: S.current.search,
              onPressed: () =>
                  context.bloc<SchoolsBloc>().add(const SchoolsEvent.onSearchClicked()),
            ),
            const SizedBox(
              height: AppSpaces.sp4,
            ),
            Expanded(
              child: _SchoolList(
                items: schools,
                isLoading: isLoading,
                onTap: (item) =>
                    context.bloc<SchoolsBloc>().add(SchoolsEvent.onSchoolSelected(item)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
