import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aula4/app/pages/splash/splash_page.dart';

main() {
  testWidgets('SplashPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SplashPage(title: 'Splash')));
    final titleFinder = find.text('Splash');
    expect(titleFinder, findsOneWidget);
  });
}
