import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Provideor de estado, informacion del estado de la app
final isDarkmodeProvider = StateProvider((ref) => true);

//inmutable - estado de colores
final colorListProvider = Provider((ref) => colorList);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);
