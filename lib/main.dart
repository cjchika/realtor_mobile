import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/shared_provider/shared_providers.dart';
import 'package:realtor_app/pages/application/application_page.dart';
import 'package:realtor_app/pages/onboarding/onboarding_page.dart';
import 'package:realtor_app/routes/app_routes.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final firstTime = ref.watch(sharedPrefHelperProvider).getOpenFirstTime;
    // print(firstTime);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: Colors.transparent),
        ),
        home: const OnboardingPage(),
        routes: AppRoutes.routes,
      ),
    );
  }
}
