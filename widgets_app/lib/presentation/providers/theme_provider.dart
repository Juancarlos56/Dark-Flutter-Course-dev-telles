import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Provideor de estado, informacion del estado de la app - state estar pendiente del estado
final isDarkmodeProvider = StateProvider((ref) => true);

//inmutable - estado de colores -- valores que nunca cambian
final colorListProvider = Provider((ref) => colorList);

//un simple int -- pieza de estado
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)
// mantener un estado del objeto es mas elaborado
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Notifier or Controller
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Nueva instancia de mi clase
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
