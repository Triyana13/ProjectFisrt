// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:login_ui/main.dart';

void main() {
  testWidgets('Login page widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LoginApp());

    // Verify that we have the expected widgets on the login page.
    expect(
        find.text('Login'), findsOneWidget); // Mencari teks "Login" di app bar
    expect(
        find.text('Email'), findsOneWidget); // Mencari teks "Email" pada form
    expect(find.text('Password'),
        findsOneWidget); // Mencari teks "Password" pada form
    expect(find.text('Login'), findsOneWidget); // Mencari tombol "Login"

    // Enter some text into the email and password fields
    await tester.enterText(
        find.byType(TextFormField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    // Tap the login button
    await tester.tap(find.text('Login'));

    // Rebuild the widget after the button press.
    await tester.pump();
  });
}
