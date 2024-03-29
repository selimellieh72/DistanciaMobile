import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
