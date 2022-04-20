import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/usecases/usecases.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia,NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);


  @override
  Future<Either<Failures, NumberTrivia>>? call(NoParams params) async{
    return await repository.getRandomNumberTrivia();
  }
}
