import 'package:flutter/material.dart';


import 'package:flutter_application_4/admin.dart';
import 'package:flutter_application_4/ordret.dart';
import 'package:flutter_application_4/ordretravail.dart';
import 'package:flutter_application_4/pageoper.dart';
import 'package:flutter_application_4/oper.dart';
import 'package:flutter_application_4/respprod.dart';
import 'package:flutter_application_4/resptech.dart';
import 'package:flutter_application_4/suivtemps.dart';
import 'package:flutter_application_4/welcome.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return WelcomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'resptech',
          builder: (BuildContext context, GoRouterState state) {
            return ResponsableTechniquePage();
          },
        ),
        GoRoute(
          path: 'respprod',
          builder: (BuildContext context, GoRouterState state) {
            return ResponsableProductionPage();
          },
        ),
        GoRoute(
          path: 'oper',
          builder: (BuildContext context, GoRouterState state) {
            return OperateurPage();
          },
        ),
        GoRoute(
          path: 'admin',
          builder: (BuildContext context, GoRouterState state) {
            return AdministrateurPage();
          },
        ),
        GoRoute(
          path: 'operat',
          builder: (BuildContext context, GoRouterState state) {
            return OperatPage();
          },
        ),
        GoRoute(
          path: 'ordre',
          builder: (BuildContext context, GoRouterState state) {
            return WorkOrderPage();
          },
        ),
        GoRoute(
          path: 'ordret',
          builder: (BuildContext context, GoRouterState state) {
            return Ordret();
          },
        ),
        GoRoute(
          path: 'suiv',
          builder: (BuildContext context, GoRouterState state) {
            return SuivTemps();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
