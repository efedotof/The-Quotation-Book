part of 'theme_cubit.dart';

@immutable
class ThemeState extends Equatable {

  final Brightness brightness;

  const ThemeState(this.brightness);

  bool get isDark => brightness == Brightness.dark;

  @override
  List<Object> get props => [brightness];
  

}


