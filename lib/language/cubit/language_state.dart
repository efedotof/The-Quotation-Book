part of 'language_cubit.dart';

@immutable
class LanguageState extends Equatable {

  final String locale;

  const LanguageState(this.locale);

  @override
  List<Object> get props => [locale];
  

}


