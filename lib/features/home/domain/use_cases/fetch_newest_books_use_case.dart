import 'package:bookverse/core/errors/failures.dart';
import 'package:bookverse/core/use_cases/use_case.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:bookverse/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber = 0]) async {
    //{Check Permission}
    return await homeRepo.fetchNewestBooks(pageNumber: pageNumber);
  }
}
