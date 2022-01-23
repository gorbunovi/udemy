import 'package:dartz/dartz.dart';
import 'package:the_clean_architecture/core/error/failure.dart';
import 'package:the_clean_architecture/feature/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntity>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonEntity>>> searchPerson(String query);
}
