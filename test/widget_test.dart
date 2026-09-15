import 'package:flutter_test/flutter_test.dart';
import 'package:nutrifit_mille2/main.dart';

void main() {
  testWidgets('Teste da NutriFit', (WidgetTester tester) async {
    await tester.pumpWidget(const NutriFitApp());

    expect(find.text('NutriFit'), findsOneWidget);
    expect(find.text('Ver Cardápio'), findsOneWidget);
  });
}