import 'package:bookverse/core/errors/failures.dart';
import 'package:bookverse/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookverse/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:bookverse/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({
    int pageNumber = 0,
  }) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({
    int pageNumber = 0,
  }) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks(
        pageNumber: pageNumber,
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
