import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication_template/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:authentication_template/repositories/authentication/authentication_repository.dart';
import 'package:authentication_template/services/di/injection_container.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await initializeInjection();

      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]);

      BlocOverrides.runZoned(
        () {
          runApp(const MyApp());
        },
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) {
      if (!kDebugMode) {
        // ignore: avoid_print
        print(error);
        // ignore: avoid_print
        print(stackTrace);
      }
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(
        authenticationRepository: IAuthenticationRepository(),
      ),
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return BlocListener<AuthenticationBloc, AuthenticationState>(
            listenWhen: (previous, current) =>
                previous.isLoaded != current.isLoaded,
            listener: (context, state) {
              /*  if (state.isAuthenticated) {
                _navigator.pushAndRemoveUntil(
                  MainPage(),
                  (route) => false,
                );
              } else {
                _navigator.pushAndRemoveUntil(
                  WelcomePage(),
                  (route) => false,
                );
              } */
            },
            child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listenWhen: (previous, current) =>
                  (previous.isAuthenticated != current.isAuthenticated) &&
                  (previous.isLoaded == current.isLoaded),
              listener: (context, state) {
                /* if (state.isAuthenticated) {
                  _navigator.pushAndRemoveUntil(
                    RootPageWrapper.route(
                      child: MainPage(child: MainNavScreen()),
                    ),
                    (route) => false,
                  );
                } else {
                  _navigator.pushAndRemoveUntil(
                    WelcomePage(),
                    (route) => false,
                  );
                } */
              },
              child: child,
            ),
          );
        },
        home: const Scaffold(),
      ),
    );
  }
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (!kDebugMode) {
      // ignore: avoid_print
      print('${bloc.runtimeType} $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (!kDebugMode) {
      // ignore: avoid_print
      print('${bloc.runtimeType}');
      // ignore: avoid_print
      print('$error');
      // ignore: avoid_print
      print('$stackTrace');
    }
  }
}
