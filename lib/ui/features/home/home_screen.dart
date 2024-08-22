// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:planny/core/common/app_routes.dart';
import 'package:planny/core/common/app_spaces.dart';
import 'package:planny/core/common/extension/context.dart';
import 'package:planny/core/domain/entity/lesson_entity.dart';
import 'package:planny/generated/l10n.dart';
import 'package:planny/injection.dart';
import 'package:planny/ui/common/app_bar.dart';
import 'package:planny/ui/common/app_card.dart';
import 'package:planny/ui/common/app_shimmer.dart';
import 'package:planny/ui/common/app_shimmer_content.dart';
import 'package:planny/ui/common/network_image_with_shimmer.dart';
import 'package:planny/ui/common/theme/app_decoration.dart';
import 'package:planny/ui/common/theme/app_sizes.dart';
import 'package:planny/ui/common/theme/theme_provider.dart';
import 'package:planny/ui/features/home/bloc/home_view_state.dart';
import 'bloc/home_bloc.dart';

part 'widget/lesson_item.dart';

part 'widget/lesson_list.dart';

part 'widget/lesson_shimmer_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: BlocConsumer<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          return state.when(
            initial: () => Container(),
            show: (state) => _HomeScreenInternal(
              state: state,
              onDateChanged: (value) =>
                  context.bloc<HomeBloc>().add(HomeEvent.onDateSelected(value)),
              onProfileClicked: () => AppRoutes.pushProfile(context),
            ),
          );
        },
        listener: (BuildContext context, HomeState state) {},
      ),
    );
  }
}

class _HomeScreenInternal extends StatelessWidget {
  final HomeViewState state;
  final ValueChanged<DateTime> onDateChanged;
  final Function() onProfileClicked;

  const _HomeScreenInternal(
      {super.key,
      required this.state,
      required this.onDateChanged,
      required this.onProfileClicked});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlannyAppBar(
        title: S.current.homeTitle,
        actions: [
          GestureDetector(
            onTap: onProfileClicked,
            child: NetworkImageWithShimmer(
              url: state.user.avatar,
              width: AppSizes.avatarSizeM,
              height: AppSizes.avatarSizeM,
              borderRadius: AppDecoration.brAvatarL,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CalendarDatePicker(
              initialDate: state.date,
              firstDate: DateTime.now().subtract(const Duration(days: 365)),
              lastDate: DateTime.now().add(const Duration(days: 365)),
              onDateChanged: onDateChanged,
            ),
          ),
          SliverToBoxAdapter(
            child: _LessonList(
              items: state.lessons,
              isLoading: state.isLoading,
            ),
          )
        ],
      ),
    );
  }
}
