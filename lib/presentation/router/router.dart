import 'package:billing_sample_app/presentation/checkout/providers.dart';
import 'package:billing_sample_app/presentation/checkout/success_page.dart';
import 'package:billing_sample_app/presentation/router/paths.dart';
import 'package:billing_sample_app/presentation/top/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: Paths.initPage,
        builder: (BuildContext context, GoRouterState state) {
          return const TopPage();
        },
      ),
      GoRoute(
        path: Paths.successPage,
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessPage();
        },
      ),
    ],
    refreshListenable: ref.watch(redirectTimeProvider),
    redirect: (state) {
      if (ref.watch(redirectTimeProvider).value == 0) {
        ref.read(redirectTimeProvider).resetCount();
        ref.read(timerProvider).cancel();
        return Paths.initPage;
      }
      return null;
    },
  ),
);
