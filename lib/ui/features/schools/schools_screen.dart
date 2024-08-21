// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/core/common/extension/context.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/app_button.dart';
import 'package:planny/ui/common/app_label.dart';
import 'package:planny/ui/common/app_textfield.dart';
import 'package:planny/ui/features/schools/bloc/schools_bloc.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';

import '../../../generated/l10n.dart';

part 'widget/school_list.dart';

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
              show: (name, isLoading, error, schools) => _SchoolsScreenInternal(
                    name: name,
                    isLoading: isLoading,
                    error: error,
                    schools: schools,
                    nameController: _nameController,
                  ));
        },
        listener: (BuildContext context, SchoolsState state) {
          if (state.name != _nameController.text) {
            _nameController.text = state.name;
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
      body: SafeArea(
        child: Padding(
          padding: AppSpaces.p16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppLabel(text: S.current.enterSchoolNameLabel),
              AppTextField(
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
                title: S.current.search,
                onPressed: () =>
                    context.bloc<SchoolsBloc>().add(const SchoolsEvent.onSearchClicked()),
              ),
              Expanded(
                child: _SchoolList(
                  schools: schools,
                  isLoading: isLoading,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
