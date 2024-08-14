import 'package:get_it/get_it.dart';
import 'package:vehicle_management_app/data/repositories/auth/auth_repository_impl.dart';
import 'package:vehicle_management_app/data/sources/auth_firebase_service.dart';
import 'package:vehicle_management_app/domain/repositories/auth/auth.dart';
import 'package:vehicle_management_app/domain/usecases/auth/get_user.dart';
import 'package:vehicle_management_app/domain/usecases/auth/sigin.dart';
import 'package:vehicle_management_app/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
}
