import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:distance_tracker/pages/sign_up.dart';

void main() {
 
 final String incorrectMailWithoutAt = 'worker1gmail.com';
 final String incorrectgMailWithoutDot = 'worker1@gmailcom';
 final String incorrectMailWithoutTextAfterAt = 'worker1@';
 final String incorrectMailWithoutTextAfterDot = 'worker1@gmail.';
 final String incorrectMailWithNoSymbols = '';
 final String incorrectMailWithoutSymbolsBeforeAt = '@gmail.com';
 final String incorrectMailWithoutSymbolsBeforeDot = '.com';
 final String correctMail = 'worker1@gmail.com';
 final String incorrectPasswordWithNoSymbols = '';
 final String incorrectPasswordToShort = 'Abcdesj_';
 final String incorrectPasswordToShort = 'ABCD555_';
 final String incorrectPasswordToShort = 'abcd555_';
 final String incorrectPasswordToShort = 'Abcd555';
 final String incorrectPasswordToShort = 'Abcd55_';
 final String correctPassword = 'Abcd555_';
 final String oneMoreCorrectPassword = 'Abcd555_';

 testWidgets('TEST TextFormField FOR PASSWORD', (WidgetTester tester) async {
   await tester.pumpWidget(SignUpScreen());
   test('entering an incorrect password with correct mail', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectPasswordWithNoSymbols);
   });
   test('entering an incorrect password with correct mail', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectPasswordToShort);
   });
   test('entering the correct password with correct mail', () async {
     await tester.enterText(find.byType(TextFormField), correctPassword);
   });
   test('entering the correct password with correct mail', () async {
     await tester.enterText(
         find.byType(TextFormField), oneMoreCorrectPassword);
   });
 });

 testWidgets('TEST TextFormField FOR EMAIL', (WidgetTester tester) async {
   await tester.pumpWidget(SignUpScreen());
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutAt);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectgMailWithoutDot);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutTextAfterAt);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithNoSymbols);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutTextAfterDot);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutSymbolsBeforeAt);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutTextAfterDot);
   });
   test('Вentering incorrect mail with a correct password', () async {
     await tester.enterText(
         find.byType(TextFormField), incorrectMailWithoutSymbolsBeforeDot);
   });

   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(find.byType(TextFormField), correctMailSPBU);
   });
   test('entering incorrect mail with a correct password', () async {
     await tester.enterText(find.byType(TextFormField), correctMail);
   });
 });

}
