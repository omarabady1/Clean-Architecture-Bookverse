import 'package:bookverse/core/errors/failures.dart';
import 'package:bookverse/core/use_cases/no_param_use_case.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:bookverse/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    //{Check Permission}
    return await homeRepo.fetchNewestBooks();
  }
}
