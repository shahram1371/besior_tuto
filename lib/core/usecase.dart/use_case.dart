//T:Type of output
//P:param of input

import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<String, Type>> call( Params params);
}

//when we want to not send any params
class NoParams {}
