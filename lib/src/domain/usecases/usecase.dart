import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../failures/main_failure.dart';

abstract class UseCase<Type, Params> {
  @lazySingleton
  Future<Either<MainFailure, Type>> call(Params params);
}
