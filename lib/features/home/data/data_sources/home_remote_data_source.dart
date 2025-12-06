import 'package:bookverse/constants.dart';
import 'package:bookverse/core/utils/api_service.dart';
import 'package:bookverse/core/utils/functions/cache_books.dart';
import 'package:bookverse/features/home/data/models/book_model.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImp implements HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImp(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
      'volumes?q=subject:general&startIndex=${pageNumber * 10}',
    );
    List<BookEntity> books = getBooksList(data);
    cacheBoxData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      'volumes?q=subject:Computers&orderBy=newest',
    );
    List<BookEntity> books = getBooksList(data);
    cacheBoxData(books, kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    if (data['items'] != null && data['items'] is List) {
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
    }
    return books;
  }
}
